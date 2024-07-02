import 'package:freezed_annotation/freezed_annotation.dart';

part 'move_data.freezed.dart';
part 'move_data.g.dart';

@freezed
class MoveInfo with _$MoveInfo {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    explicitToJson: true,
  )
  const factory MoveInfo({
    List<MoveData>? move,
  }) = _MoveInfo;
  factory MoveInfo.fromJson(Map<String, dynamic> json) =>
      _$MoveInfoFromJson(json);
}

@freezed
class MoveData with _$MoveData {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    explicitToJson: true,
  )
  const factory MoveData({
    Move? move,
  }) = _MoveDatat;
  factory MoveData.fromJson(Map<String, dynamic> json) =>
      _$MoveDataFromJson(json);
}

@freezed
class Move with _$Move {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    explicitToJson: true,
  )
  const factory Move({
    String? name,
    String? url,
  }) = _Move;
  factory Move.fromJson(Map<String, dynamic> json) => _$MoveFromJson(json);
}
