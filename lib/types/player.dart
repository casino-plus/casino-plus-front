//
//
//

import 'package:freezed_annotation/freezed_annotation.dart';
part 'player.freezed.dart';
part 'player.g.dart';

@freezed
class Player with _$Player {
  const Player._();

  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory Player({
    required int seat,
    required String userId,
    required String nickname,
    required String iconUrl,
  }) = _Player;

  factory Player.fromJson(Map<String, dynamic> json) => _$PlayerFromJson(json);
}
