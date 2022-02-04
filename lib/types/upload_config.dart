import 'package:freezed_annotation/freezed_annotation.dart';
part 'upload_config.freezed.dart';
part 'upload_config.g.dart';

@freezed
class UploadConfig with _$UploadConfig {
  const UploadConfig._();

  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory UploadConfig({
    required String filePath,
    required String authKey,
  }) = _UploadConfig;

  factory UploadConfig.fromJson(Map<String, dynamic> json) =>
      _$UploadConfigFromJson(json);
}

enum UploadPurpose {
  forChatImage,
  forUserIcon,
  forRoomIcon,
}

extension UploadPurposeExt on UploadPurpose {
  int intValue() {
    switch (this) {
      case UploadPurpose.forChatImage:
        return 0;
      case UploadPurpose.forUserIcon:
        return 1;
      case UploadPurpose.forRoomIcon:
        return 2;
    }
  }
}

enum UploadMediaType {
  text,
  image,
  video,
}

extension UploadMediaTypeExt on UploadMediaType {
  int intValue() {
    switch (this) {
      case UploadMediaType.text:
        return 0;
      case UploadMediaType.image:
        return 1;
      case UploadMediaType.video:
        return 2;
    }
  }
}
