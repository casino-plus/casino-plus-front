// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Chat _$$_ChatFromJson(Map<String, dynamic> json) => _$_Chat(
      id: json['id'] as int,
      createdAt: DateTime.parse(json['created_at'] as String),
      roomID: json['room_id'] as int,
      userID: json['user_id'] as int,
      text: json['text'] as String,
      imageURL: json['image_url'] as String,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_ChatToJson(_$_Chat instance) => <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt.toIso8601String(),
      'room_id': instance.roomID,
      'user_id': instance.userID,
      'text': instance.text,
      'image_url': instance.imageURL,
      'tags': instance.tags,
    };
