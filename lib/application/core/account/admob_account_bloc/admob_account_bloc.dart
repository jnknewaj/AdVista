// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:advista/infrastructure/core/account_service.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:advista/domain/core/account_failures.dart';
import 'package:advista/domain/core/admob_account.dart';
import 'package:advista/domain/core/i_account_repository.dart';
import 'package:injectable/injectable.dart';

part 'admob_account_bloc.freezed.dart';
part 'admob_account_event.dart';
part 'admob_account_state.dart';

/// Dependent:
///  - [ProfilePage]

@injectable
class AdmobAccountBloc extends Bloc<AdmobAccountEvent, AdmobAccountState> {
  /// Implemented by [AdmobAccountRepository]
  final IAccountRepository _repository;
  final AccountService _accountService;

  AdmobAccountBloc(
    this._repository,
    this._accountService,
  ) : super(const AdmobAccountState.initial()) {
    on<AdmobAccountEvent>(_onEvents);
  }

  Future<void> _onEvents(
    AdmobAccountEvent event,
    Emitter<AdmobAccountState> emit,
  ) async {
    await event.map(
      accountInfoRequested: (e) async {
        emit(const AdmobAccountState.loading());
        final result = await _repository.getAccount();
        await result.fold(
          (l) async => emit(AdmobAccountState.failed(l)),
          (account) async {
            final acId = await _accountService.getAccountId();
            if (acId == null) {
              await _accountService.storeAccountId(account.publisherId);
            }

            emit(AdmobAccountState.loaded(account));
          },
        );
      },
      checkedAccountId: (e) async {
        emit(const AdmobAccountState.loading());
        final idStored = await _accountService.isAccountIdStored();
        if (idStored) {
          emit(const AdmobAccountState.idInfoFound());
        } else {
          emit(const AdmobAccountState.idInfoNotFound());
        }
      },
    );
  }
}
