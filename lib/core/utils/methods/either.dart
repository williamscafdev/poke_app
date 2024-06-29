import 'package:freezed_annotation/freezed_annotation.dart';

part 'either.freezed.dart';

@freezed
class Either<L, R> with _$Either<L, R> {
  const factory Either.left(L left) = _Left;
  const factory Either.right(R right) = _Right;
}
