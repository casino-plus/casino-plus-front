import 'package:http/http.dart' as http;
import 'package:file_picker/file_picker.dart';
import 'package:http_parser/http_parser.dart';
import 'dart:convert';
import '../types/api_models.dart';

class API {
  String path() {
    return '/users';
  }
}

// リクエスト
class Request {
  final User user;
  Request(this.user);
  // Class -> JSON
  dynamic toJson() {
    return user.toJson();
  }
}

// レスポンス
class Response {
  User? user;

  // JSON -> Class
  Response.fromJson(dynamic rawJson) {
    user = User.fromJson(rawJson['user']);
  }
}

Future<Response> sendRequest(
  Request request,
  PlatformFile imageFile,
) async {
  print('新規ユーザー作成リクエストを送信します');
  var urlString = 'http://0.0.0.0:3000' + API().path();
  var url = Uri.parse(urlString);
  final multipartRequest = http.MultipartRequest(
    'POST',
    url,
  );

  final stringUser = json.encode(request.user);
  final file = http.MultipartFile.fromBytes(
    'file',
    imageFile.bytes!,
    filename: 'rawImage.png',
    contentType: MediaType('image', 'png'),
  );

  multipartRequest.fields['user'] = stringUser;
  multipartRequest.files.add(file);

  final streamedResponse = await multipartRequest.send();
  final stringResponse = await streamedResponse.stream.bytesToString();
  final decoded = json.decode(stringResponse);
  final res = Response.fromJson(decoded);
  return res;
}
