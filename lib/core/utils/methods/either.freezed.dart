// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'either.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Either<L, R> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(L left) left,
    required TResult Function(R right) right,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(L left)? left,
    TResult? Function(R right)? right,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(L left)? left,
    TResult Function(R right)? right,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Left<L, R> value) left,
    required TResult Function(_Right<L, R> value) right,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Left<L, R> value)? left,
    TResult? Function(_Right<L, R> value)? right,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Left<L, R> value)? left,
    TResult Function(_Right<L, R> value)? right,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EitherCopyWith<L, R, $Res> {
  factory $EitherCopyWith(
          Either<L, R> value, $Res Function(Either<L, R>) then) =
      _$EitherCopyWithImpl<L, R, $Res, Either<L, R>>;
}

/// @nodoc
class _$EitherCopyWithImpl<L, R, $Res, $Val extends Either<L, R>>
    implements $EitherCopyWith<L, R, $Res> {
  _$EitherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LeftImplCopyWith<L, R, $Res> {
  factory _$$LeftImplCopyWith(
          _$LeftImpl<L, R> value, $Res Function(_$LeftImpl<L, R>) then) =
      __$$LeftImplCopyWithImpl<L, R, $Res>;
  @useResult
  $Res call({L left});
}

/// @nodoc
class __$$LeftImplCopyWithImpl<L, R, $Res>
    extends _$EitherCopyWithImpl<L, R, $Res, _$LeftImpl<L, R>>
    implements _$$LeftImplCopyWith<L, R, $Res> {
  __$$LeftImplCopyWithImpl(
      _$LeftImpl<L, R> _value, $Res Function(_$LeftImpl<L, R>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? left = freezed,
  }) {
    return _then(_$LeftImpl<L, R>(
      freezed == left
          ? _value.left
          : left // ignore: cast_nullable_to_non_nullable
              as L,
    ));
  }
}

/// @nodoc

class _$LeftImpl<L, R> implements _Left<L, R> {
  const _$LeftImpl(this.left);

  @override
  final L left;

  @override
  String toString() {
    return 'Either<$L, $R>.left(left: $left)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeftImpl<L, R> &&
            const DeepCollectionEquality().equals(other.left, left));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(left));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LeftImplCopyWith<L, R, _$LeftImpl<L, R>> get copyWith =>
      __$$LeftImplCopyWithImpl<L, R, _$LeftImpl<L, R>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(L left) left,
    required TResult Function(R right) right,
  }) {
    return left(this.left);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(L left)? left,
    TResult? Function(R right)? right,
  }) {
    return left?.call(this.left);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(L left)? left,
    TResult Function(R right)? right,
    required TResult orElse(),
  }) {
    if (left != null) {
      return left(this.left);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Left<L, R> value) left,
    required TResult Function(_Right<L, R> value) right,
  }) {
    return left(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Left<L, R> value)? left,
    TResult? Function(_Right<L, R> value)? right,
  }) {
    return left?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Left<L, R> value)? left,
    TResult Function(_Right<L, R> value)? right,
    required TResult orElse(),
  }) {
    if (left != null) {
      return left(this);
    }
    return orElse();
  }
}

abstract class _Left<L, R> implements Either<L, R> {
  const factory _Left(final L left) = _$LeftImpl<L, R>;

  L get left;
  @JsonKey(ignore: true)
  _$$LeftImplCopyWith<L, R, _$LeftImpl<L, R>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RightImplCopyWith<L, R, $Res> {
  factory _$$RightImplCopyWith(
          _$RightImpl<L, R> value, $Res Function(_$RightImpl<L, R>) then) =
      __$$RightImplCopyWithImpl<L, R, $Res>;
  @useResult
  $Res call({R right});
}

/// @nodoc
class __$$RightImplCopyWithImpl<L, R, $Res>
    extends _$EitherCopyWithImpl<L, R, $Res, _$RightImpl<L, R>>
    implements _$$RightImplCopyWith<L, R, $Res> {
  __$$RightImplCopyWithImpl(
      _$RightImpl<L, R> _value, $Res Function(_$RightImpl<L, R>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? right = freezed,
  }) {
    return _then(_$RightImpl<L, R>(
      freezed == right
          ? _value.right
          : right // ignore: cast_nullable_to_non_nullable
              as R,
    ));
  }
}

/// @nodoc

class _$RightImpl<L, R> implements _Right<L, R> {
  const _$RightImpl(this.right);

  @override
  final R right;

  @override
  String toString() {
    return 'Either<$L, $R>.right(right: $right)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RightImpl<L, R> &&
            const DeepCollectionEquality().equals(other.right, right));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(right));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RightImplCopyWith<L, R, _$RightImpl<L, R>> get copyWith =>
      __$$RightImplCopyWithImpl<L, R, _$RightImpl<L, R>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(L left) left,
    required TResult Function(R right) right,
  }) {
    return right(this.right);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(L left)? left,
    TResult? Function(R right)? right,
  }) {
    return right?.call(this.right);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(L left)? left,
    TResult Function(R right)? right,
    required TResult orElse(),
  }) {
    if (right != null) {
      return right(this.right);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Left<L, R> value) left,
    required TResult Function(_Right<L, R> value) right,
  }) {
    return right(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Left<L, R> value)? left,
    TResult? Function(_Right<L, R> value)? right,
  }) {
    return right?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Left<L, R> value)? left,
    TResult Function(_Right<L, R> value)? right,
    required TResult orElse(),
  }) {
    if (right != null) {
      return right(this);
    }
    return orElse();
  }
}

abstract class _Right<L, R> implements Either<L, R> {
  const factory _Right(final R right) = _$RightImpl<L, R>;

  R get right;
  @JsonKey(ignore: true)
  _$$RightImplCopyWith<L, R, _$RightImpl<L, R>> get copyWith =>
      throw _privateConstructorUsedError;
}
