//
//
//

import 'package:freezed_annotation/freezed_annotation.dart';
part 'side.freezed.dart';
part 'side.g.dart';

@freezed
class Side with _$Side {
  const Side._();

  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory Side({
    required int seat,
    required int playerStep,
    required int chips,
    required List<int> handCardIds,
    required int? betLevel,
    required int? putCardId,
    required int lastCombo,
  }) = _Side;

  factory Side.fromJson(Map<String, dynamic> json) => _$SideFromJson(json);
}
