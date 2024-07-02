import 'package:freezed_annotation/freezed_annotation.dart';

part 'stats_info.freezed.dart';
part 'stats_info.g.dart';

@freezed
class StatsInfo with _$StatsInfo {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    explicitToJson: true,
  )
  const factory StatsInfo({
    int? baseStat,
    int? effort,
    Stat? stat,
  }) = _StatsInfo;
  factory StatsInfo.fromJson(Map<String, dynamic> json) =>
      _$StatsInfoFromJson(json);
}

@freezed
class Stat with _$Stat {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    explicitToJson: true,
  )
  const factory Stat({
    String? name,
    String? url,
  }) = _Stat;
  factory Stat.fromJson(Map<String, dynamic> json) => _$StatFromJson(json);
}
