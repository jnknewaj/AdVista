import 'package:advista/domain/core/account_failures.dart';
import 'package:advista/domain/core/i_account_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'ac_opening_date_event.dart';
part 'ac_opening_date_state.dart';
part 'ac_opening_date_bloc.freezed.dart';

@injectable
class AcOpeningDateBloc extends Bloc<AcOpeningDateEvent, AcOpeningDateState> {
  final IAccountRepository _repository;
  AcOpeningDateBloc(this._repository)
      : super(const AcOpeningDateState.initial()) {
    on<AcOpeningDateEvent>(_onEvents);
  }

  Future<void> _onEvents(
    AcOpeningDateEvent event,
    Emitter<AcOpeningDateState> emit,
  ) async {
    await event.map(
      started: (e) async {
        final result = await _repository.getAccoutOpeningDate();

        await result.fold(
          (failure) async {
            emit(AcOpeningDateState.failed(failure));
          },
          (data) async {
            emit(AcOpeningDateState.loaded(data));
          },
        );
      },
    );
  }
}
