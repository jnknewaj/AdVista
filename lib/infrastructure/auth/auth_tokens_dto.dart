import 'package:advista/domain/auth/auth_tokens.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'auth_tokens_dto.freezed.dart';
part 'auth_tokens_dto.g.dart';

@freezed
class AuthTokensDto with _$AuthTokensDto {
  const AuthTokensDto._();

  const factory AuthTokensDto({
    required String accessToken,
    required String refreshToken,
    required int expiresIn,
  }) = _AuthTokensDto;

  // Convert from Domain Model to Dto (optional, for saving back to storage or API requests)
  factory AuthTokensDto.fromDomain(AuthTokens authResult) {
    final expiresIn =
        authResult.expiryTime.difference(DateTime.now()).inSeconds;
    return AuthTokensDto(
      accessToken: authResult.accessToken,
      refreshToken: authResult.refreshToken,
      expiresIn: expiresIn,
    );
  }

  // Convert to Domain Model
  AuthTokens toDomain() {
    return AuthTokens(
      accessToken: accessToken,
      refreshToken: refreshToken,
      expiryTime: DateTime.now().add(Duration(seconds: expiresIn)),
    );
  }

  factory AuthTokensDto.fromMap(Map<String, dynamic> map) {
    return AuthTokensDto(
      accessToken: map['access_token'] as String,
      refreshToken: map['refresh_token'] as String? ?? '',
      expiresIn: map['expires_in'] as int,
    );
  }

  factory AuthTokensDto.fromJson(Map<String, dynamic> json) =>
      _$AuthTokensDtoFromJson(json);
}
