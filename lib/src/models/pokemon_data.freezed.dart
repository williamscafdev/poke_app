// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonData _$PokemonDataFromJson(Map<String, dynamic> json) {
  return _PokemonData.fromJson(json);
}

/// @nodoc
mixin _$PokemonData {
  int? get height => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get weight => throw _privateConstructorUsedError;
  List<MoveData>? get moves => throw _privateConstructorUsedError;
  List<StatsInfo>? get stats => throw _privateConstructorUsedError;
  SpritesData? get sprites => throw _privateConstructorUsedError;
  bool? get isFavorite => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonDataCopyWith<PokemonData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonDataCopyWith<$Res> {
  factory $PokemonDataCopyWith(
          PokemonData value, $Res Function(PokemonData) then) =
      _$PokemonDataCopyWithImpl<$Res, PokemonData>;
  @useResult
  $Res call(
      {int? height,
      int? id,
      String? name,
      int? weight,
      List<MoveData>? moves,
      List<StatsInfo>? stats,
      SpritesData? sprites,
      bool? isFavorite});

  $SpritesDataCopyWith<$Res>? get sprites;
}

/// @nodoc
class _$PokemonDataCopyWithImpl<$Res, $Val extends PokemonData>
    implements $PokemonDataCopyWith<$Res> {
  _$PokemonDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? weight = freezed,
    Object? moves = freezed,
    Object? stats = freezed,
    Object? sprites = freezed,
    Object? isFavorite = freezed,
  }) {
    return _then(_value.copyWith(
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
      moves: freezed == moves
          ? _value.moves
          : moves // ignore: cast_nullable_to_non_nullable
              as List<MoveData>?,
      stats: freezed == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<StatsInfo>?,
      sprites: freezed == sprites
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as SpritesData?,
      isFavorite: freezed == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SpritesDataCopyWith<$Res>? get sprites {
    if (_value.sprites == null) {
      return null;
    }

    return $SpritesDataCopyWith<$Res>(_value.sprites!, (value) {
      return _then(_value.copyWith(sprites: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonDataImplCopyWith<$Res>
    implements $PokemonDataCopyWith<$Res> {
  factory _$$PokemonDataImplCopyWith(
          _$PokemonDataImpl value, $Res Function(_$PokemonDataImpl) then) =
      __$$PokemonDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? height,
      int? id,
      String? name,
      int? weight,
      List<MoveData>? moves,
      List<StatsInfo>? stats,
      SpritesData? sprites,
      bool? isFavorite});

  @override
  $SpritesDataCopyWith<$Res>? get sprites;
}

/// @nodoc
class __$$PokemonDataImplCopyWithImpl<$Res>
    extends _$PokemonDataCopyWithImpl<$Res, _$PokemonDataImpl>
    implements _$$PokemonDataImplCopyWith<$Res> {
  __$$PokemonDataImplCopyWithImpl(
      _$PokemonDataImpl _value, $Res Function(_$PokemonDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? weight = freezed,
    Object? moves = freezed,
    Object? stats = freezed,
    Object? sprites = freezed,
    Object? isFavorite = freezed,
  }) {
    return _then(_$PokemonDataImpl(
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
      moves: freezed == moves
          ? _value._moves
          : moves // ignore: cast_nullable_to_non_nullable
              as List<MoveData>?,
      stats: freezed == stats
          ? _value._stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<StatsInfo>?,
      sprites: freezed == sprites
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as SpritesData?,
      isFavorite: freezed == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$PokemonDataImpl implements _PokemonData {
  const _$PokemonDataImpl(
      {this.height,
      this.id,
      this.name,
      this.weight,
      final List<MoveData>? moves,
      final List<StatsInfo>? stats,
      this.sprites,
      this.isFavorite = false})
      : _moves = moves,
        _stats = stats;

  factory _$PokemonDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonDataImplFromJson(json);

  @override
  final int? height;
  @override
  final int? id;
  @override
  final String? name;
  @override
  final int? weight;
  final List<MoveData>? _moves;
  @override
  List<MoveData>? get moves {
    final value = _moves;
    if (value == null) return null;
    if (_moves is EqualUnmodifiableListView) return _moves;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<StatsInfo>? _stats;
  @override
  List<StatsInfo>? get stats {
    final value = _stats;
    if (value == null) return null;
    if (_stats is EqualUnmodifiableListView) return _stats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final SpritesData? sprites;
  @override
  @JsonKey()
  final bool? isFavorite;

  @override
  String toString() {
    return 'PokemonData(height: $height, id: $id, name: $name, weight: $weight, moves: $moves, stats: $stats, sprites: $sprites, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonDataImpl &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            const DeepCollectionEquality().equals(other._moves, _moves) &&
            const DeepCollectionEquality().equals(other._stats, _stats) &&
            (identical(other.sprites, sprites) || other.sprites == sprites) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      height,
      id,
      name,
      weight,
      const DeepCollectionEquality().hash(_moves),
      const DeepCollectionEquality().hash(_stats),
      sprites,
      isFavorite);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonDataImplCopyWith<_$PokemonDataImpl> get copyWith =>
      __$$PokemonDataImplCopyWithImpl<_$PokemonDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonDataImplToJson(
      this,
    );
  }
}

abstract class _PokemonData implements PokemonData {
  const factory _PokemonData(
      {final int? height,
      final int? id,
      final String? name,
      final int? weight,
      final List<MoveData>? moves,
      final List<StatsInfo>? stats,
      final SpritesData? sprites,
      final bool? isFavorite}) = _$PokemonDataImpl;

  factory _PokemonData.fromJson(Map<String, dynamic> json) =
      _$PokemonDataImpl.fromJson;

  @override
  int? get height;
  @override
  int? get id;
  @override
  String? get name;
  @override
  int? get weight;
  @override
  List<MoveData>? get moves;
  @override
  List<StatsInfo>? get stats;
  @override
  SpritesData? get sprites;
  @override
  bool? get isFavorite;
  @override
  @JsonKey(ignore: true)
  _$$PokemonDataImplCopyWith<_$PokemonDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
