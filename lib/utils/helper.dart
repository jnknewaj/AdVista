import 'package:dartz/dartz.dart';

extension EitherExtensions<L, R> on Either<L, R> {
  /// Returns the value if this is a Left, or null otherwise.
  L? getLeft() => isLeft() ? (this as Left<L, R>).value : null;

  /// Returns the value if this is a Right, or null otherwise.
  R? getRight() => isRight() ? (this as Right<L, R>).value : null;
}
