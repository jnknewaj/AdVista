import 'package:advista/domain/adsense/payments.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'payments_dto.freezed.dart';
part 'payments_dto.g.dart';

@freezed
class PaymentsDto with _$PaymentsDto {
  const PaymentsDto._();

  const factory PaymentsDto({
    required String name,
    required String? payment,
  }) = _PaymentsDto;

  factory PaymentsDto.fromResponse(Map<String, dynamic> json) {
    final name = json['name'] as String;
    final amount = json['amount'] as String?;

    return PaymentsDto(
      name: name,
      payment: amount,
    );
  }

  Payments toDomain() {
    return Payments(
      name: name,
      payment: payment,
      type: _getPaymentType(name),
    );
  }

  static PaymentType _getPaymentType(String name) {
    if (name.contains('/payments/unpaid')) {
      return PaymentType.unpaid;
    } else if (name.contains('/payments/youtube-unpaid')) {
      return PaymentType.youtubeUnpaid;
    } else if (RegExp(r'/payments/\d{4}-\d{2}-\d{2}$').hasMatch(name)) {
      return PaymentType.adsensePaid;
    } else if (RegExp(r'/payments/youtube-\d{4}-\d{2}-\d{2}$').hasMatch(name)) {
      return PaymentType.youtubePaid;
    } else {
      throw ArgumentError('Unknown payment type: $name');
    }
  }

  /// Static function to get the unpaid payment from a response
  static Payments? getUnpaidPayment(Map<String, dynamic> response) {
    if (response['payments'] is! List) {
      throw ArgumentError('Invalid payments response format');
    }

    final paymentsList = response['payments'] as List;

    for (final paymentData in paymentsList) {
      final paymentDto =
          PaymentsDto.fromResponse(paymentData as Map<String, dynamic>);
      final payment = paymentDto.toDomain();
      if (payment.type == PaymentType.unpaid) {
        return payment;
      }
    }

    // If no unpaid payment is found, return null
    return null;
  }

  factory PaymentsDto.fromJson(Map<String, dynamic> json) =>
      _$PaymentsDtoFromJson(json);
}
