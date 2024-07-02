// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'move_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MoveInfo _$MoveInfoFromJson(Map<String, dynamic> json) {
  return _MoveInfo.fromJson(json);
}

/// @nodoc
mixin _$MoveInfo {
  List<MoveData>? get move => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoveInfoCopyWith<MoveInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoveInfoCopyWith<$Res> {
  factory $MoveInfoCopyWith(MoveInfo value, $Res Function(MoveInfo) then) =
      _$MoveInfoCopyWithImpl<$Res, MoveInfo>;
  @useResult
  $Res call({List<MoveData>? move});
}

/// @nodoc
class _$MoveInfoCopyWithImpl<$Res, $Val extends MoveInfo>
    implements $MoveInfoCopyWith<$Res> {
  _$MoveInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? move = freezed,
  }) {
    return _then(_value.copyWith(
      move: freezed == move
          ? _value.move
          : move // ignore: cast_nullable_to_non_nullable
              as List<MoveData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MoveInfoImplCopyWith<$Res>
    implements $MoveInfoCopyWith<$Res> {
  factory _$$MoveInfoImplCopyWith(
          _$MoveInfoImpl value, $Res Function(_$MoveInfoImpl) then) =
      __$$MoveInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MoveData>? move});
}

/// @nodoc
class __$$MoveInfoImplCopyWithImpl<$Res>
    extends _$MoveInfoCopyWithImpl<$Res, _$MoveInfoImpl>
    implements _$$MoveInfoImplCopyWith<$Res> {
  __$$MoveInfoImplCopyWithImpl(
      _$MoveInfoImpl _value, $Res Function(_$MoveInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? move = freezed,
  }) {
    return _then(_$MoveInfoImpl(
      move: freezed == move
          ? _value._move
          : move // ignore: cast_nullable_to_non_nullable
              as List<MoveData>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$MoveInfoImpl implements _MoveInfo {
  const _$MoveInfoImpl({final List<MoveData>? move}) : _move = move;

  factory _$MoveInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MoveInfoImplFromJson(json);

  final List<MoveData>? _move;
  @override
  List<MoveData>? get move {
    final value = _move;
    if (value == null) return null;
    if (_move is EqualUnmodifiableListView) return _move;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MoveInfo(move: $move)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoveInfoImpl &&
            const DeepCollectionEquality().equals(other._move, _move));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_move));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MoveInfoImplCopyWith<_$MoveInfoImpl> get copyWith =>
      __$$MoveInfoImplCopyWithImpl<_$MoveInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MoveInfoImplToJson(
      this,
    );
  }
}

abstract class _MoveInfo implements MoveInfo {
  const factory _MoveInfo({final List<MoveData>? move}) = _$MoveInfoImpl;

  factory _MoveInfo.fromJson(Map<String, dynamic> json) =
      _$MoveInfoImpl.fromJson;

  @override
  List<MoveData>? get move;
  @override
  @JsonKey(ignore: true)
  _$$MoveInfoImplCopyWith<_$MoveInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MoveData _$MoveDataFromJson(Map<String, dynamic> json) {
  return _MoveDatat.fromJson(json);
}

/// @nodoc
mixin _$MoveData {
  Move? get move => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoveDataCopyWith<MoveData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoveDataCopyWith<$Res> {
  factory $MoveDataCopyWith(MoveData value, $Res Function(MoveData) then) =
      _$MoveDataCopyWithImpl<$Res, MoveData>;
  @useResult
  $Res call({Move? move});

  $MoveCopyWith<$Res>? get move;
}

/// @nodoc
class _$MoveDataCopyWithImpl<$Res, $Val extends MoveData>
    implements $MoveDataCopyWith<$Res> {
  _$MoveDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? move = freezed,
  }) {
    return _then(_value.copyWith(
      move: freezed == move
          ? _value.move
          : move // ignore: cast_nullable_to_non_nullable
              as Move?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MoveCopyWith<$Res>? get move {
    if (_value.move == null) {
      return null;
    }

    return $MoveCopyWith<$Res>(_value.move!, (value) {
      return _then(_value.copyWith(move: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MoveDatatImplCopyWith<$Res>
    implements $MoveDataCopyWith<$Res> {
  factory _$$MoveDatatImplCopyWith(
          _$MoveDatatImpl value, $Res Function(_$MoveDatatImpl) then) =
      __$$MoveDatatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Move? move});

  @override
  $MoveCopyWith<$Res>? get move;
}

/// @nodoc
class __$$MoveDatatImplCopyWithImpl<$Res>
    extends _$MoveDataCopyWithImpl<$Res, _$MoveDatatImpl>
    implements _$$MoveDatatImplCopyWith<$Res> {
  __$$MoveDatatImplCopyWithImpl(
      _$MoveDatatImpl _value, $Res Function(_$MoveDatatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? move = freezed,
  }) {
    return _then(_$MoveDatatImpl(
      move: freezed == move
          ? _value.move
          : move // ignore: cast_nullable_to_non_nullable
              as Move?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$MoveDatatImpl implements _MoveDatat {
  const _$MoveDatatImpl({this.move});

  factory _$MoveDatatImpl.fromJson(Map<String, dynamic> json) =>
      _$$MoveDatatImplFromJson(json);

  @override
  final Move? move;

  @override
  String toString() {
    return 'MoveData(move: $move)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoveDatatImpl &&
            (identical(other.move, move) || other.move == move));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, move);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MoveDatatImplCopyWith<_$MoveDatatImpl> get copyWith =>
      __$$MoveDatatImplCopyWithImpl<_$MoveDatatImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MoveDatatImplToJson(
      this,
    );
  }
}

abstract class _MoveDatat implements MoveData {
  const factory _MoveDatat({final Move? move}) = _$MoveDatatImpl;

  factory _MoveDatat.fromJson(Map<String, dynamic> json) =
      _$MoveDatatImpl.fromJson;

  @override
  Move? get move;
  @override
  @JsonKey(ignore: true)
  _$$MoveDatatImplCopyWith<_$MoveDatatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Move _$MoveFromJson(Map<String, dynamic> json) {
  return _Move.fromJson(json);
}

/// @nodoc
mixin _$Move {
  String? get name => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoveCopyWith<Move> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoveCopyWith<$Res> {
  factory $MoveCopyWith(Move value, $Res Function(Move) then) =
      _$MoveCopyWithImpl<$Res, Move>;
  @useResult
  $Res call({String? name, String? url});
}

/// @nodoc
class _$MoveCopyWithImpl<$Res, $Val extends Move>
    implements $MoveCopyWith<$Res> {
  _$MoveCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MoveImplCopyWith<$Res> implements $MoveCopyWith<$Res> {
  factory _$$MoveImplCopyWith(
          _$MoveImpl value, $Res Function(_$MoveImpl) then) =
      __$$MoveImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? url});
}

/// @nodoc
class __$$MoveImplCopyWithImpl<$Res>
    extends _$MoveCopyWithImpl<$Res, _$MoveImpl>
    implements _$$MoveImplCopyWith<$Res> {
  __$$MoveImplCopyWithImpl(_$MoveImpl _value, $Res Function(_$MoveImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_$MoveImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$MoveImpl implements _Move {
  const _$MoveImpl({this.name, this.url});

  factory _$MoveImpl.fromJson(Map<String, dynamic> json) =>
      _$$MoveImplFromJson(json);

  @override
  final String? name;
  @override
  final String? url;

  @override
  String toString() {
    return 'Move(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoveImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MoveImplCopyWith<_$MoveImpl> get copyWith =>
      __$$MoveImplCopyWithImpl<_$MoveImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MoveImplToJson(
      this,
    );
  }
}

abstract class _Move implements Move {
  const factory _Move({final String? name, final String? url}) = _$MoveImpl;

  factory _Move.fromJson(Map<String, dynamic> json) = _$MoveImpl.fromJson;

  @override
  String? get name;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$MoveImplCopyWith<_$MoveImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
