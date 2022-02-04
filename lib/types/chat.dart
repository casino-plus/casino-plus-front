import 'package:freezed_annotation/freezed_annotation.dart';
part 'chat.freezed.dart';
part 'chat.g.dart';

// TODO: - 実装
// DateTime createdAt = DateTime.now();

// final user = User.fromJson(json.decode(jsonString));

@freezed
class Chat with _$Chat {
  const Chat._();

  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory Chat({
    required int id,
    required DateTime createdAt,
    @JsonKey(name: 'room_id') required int roomID,
    @JsonKey(name: 'user_id') required int userID,
    required String text,
    @JsonKey(name: 'image_url') required String imageURL,
    required List<String> tags,
  }) = _Chat;

  factory Chat.fromJson(Map<String, dynamic> json) => _$ChatFromJson(json);
}
