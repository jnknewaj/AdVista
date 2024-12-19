import 'package:advista/domain/adsense/i_payments_repository.dart';
import 'package:advista/domain/adsense/payments.dart';
import 'package:advista/domain/adsense/payments_failures.dart';
import 'package:advista/infrastructure/adsense/payments_dto.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

part 'payments_info_event.dart';
part 'payments_info_state.dart';
part 'payments_info_bloc.freezed.dart';

@injectable
class PaymentsInfoBloc
    extends HydratedBloc<PaymentsInfoEvent, PaymentsInfoState> {
  final IPaymentsRepository _repository;

  PaymentsInfoBloc(this._repository)
      : super(const PaymentsInfoState.initial()) {
    on<PaymentsInfoEvent>(_onEvents);
  }

  Future<void> _onEvents(
    PaymentsInfoEvent event,
    Emitter<PaymentsInfoState> emit,
  ) async {
    await event.map(
      requestedBalance: (e) async {
        emit(const PaymentsInfoState.loading());
        final result = await _repository.getUnpaidPaymentsInfo();
        result.fold(
          (l) => emit(PaymentsInfoState.failure(l)),
          (r) => emit(PaymentsInfoState.loadedBalance(r)),
        );
      },
      requestedPaymentsInfo: (e) async {
        emit(const PaymentsInfoState.loading());
        final result = await _repository.getAllPaymentsInfo();
        result.fold(
          (l) => emit(PaymentsInfoState.failure(l)),
          (r) => emit(PaymentsInfoState.loadedPaymentsInfo(r)),
        );
      },
    );
  }

  @override
  PaymentsInfoState? fromJson(Map<String, dynamic> json) {
    try {
      // Identify the state type from JSON and deserialize accordingly
      final type = json['type'] as String?;
      switch (type) {
        case 'loadedBalance':
          final payment =
              PaymentsDto.fromJson(json['data'] as Map<String, dynamic>)
                  .toDomain();
          return PaymentsInfoState.loadedBalance(payment);
        case 'loadedPaymentsInfo':
          final paymentsList = (json['data'] as List)
              .map((e) =>
                  PaymentsDto.fromJson(e as Map<String, dynamic>).toDomain())
              .toList();
          return PaymentsInfoState.loadedPaymentsInfo(paymentsList);

        default:
          return null;
      }
    } catch (e) {
      // Handle any deserialization errors
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(PaymentsInfoState state) {
    try {
      return state.maybeMap(
        orElse: () => null,
        loadedBalance: (state) => {
          'type': 'loadedBalance',
          'data': PaymentsDto(
            name: state.payments.name,
            payment: state.payments.payment,
          ).toJson(),
        },
        loadedPaymentsInfo: (state) => {
          'type': 'loadedPaymentsInfo',
          'data': state.infoList
              .map((payment) => PaymentsDto(
                    name: payment.name,
                    payment: payment.payment,
                  ).toJson())
              .toList(),
        },
      );
    } catch (e) {
      // Handle any serialization errors
      return null;
    }
  }
}
