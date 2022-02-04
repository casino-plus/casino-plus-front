//
//
//

import 'package:freezed_annotation/freezed_annotation.dart';
part 'wheel.freezed.dart';
part 'wheel.g.dart';

@freezed
class Wheel with _$Wheel {
  const Wheel._();

  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory Wheel({
    required List<int> innerPartIds,
    required List<int> outerPartIds,
    required int innerOffset,
    required int outerOffset,
  }) = _Wheel;

  factory Wheel.fromJson(Map<String, dynamic> json) => _$WheelFromJson(json);
}
