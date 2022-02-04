import '../types/upload_config.dart';

class API {
  String path() {
    return '/upload-image-key';
  }
}

// リクエスト
class Request {
  final double sizeKB;
  final UploadPurpose purpose;
  final UploadMediaType mediaType;
  final int? userID;
  final int? roomID;
  Request({
    required this.sizeKB,
    required this.purpose,
    required this.mediaType,
    this.userID,
    this.roomID,
  });

  // Class -> JSON
  dynamic toJson() {
    return {
      'size_kb': sizeKB,
      'purpose': purpose.intValue(),
      'media_type': mediaType.intValue(),
      'usert_id': userID,
      'room_id': roomID,
    };
  }
}

// レスポンス
class Response {
  UploadConfig uploadConfig;

  Response(this.uploadConfig);

  // JSON -> Class
  Response.fromJson(dynamic rawJson)
      : uploadConfig = UploadConfig.fromJson(rawJson['upload_config']);
}

Future<Response> sendRequest(Request request) async {
  throw ('ファイルアップロードは現在利用できません client/get_upload_config.dart');
}
