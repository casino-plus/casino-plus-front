import 'dart:typed_data';
import '../config/url.dart';
import '../utils/file_client.dart' as file_client;
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
    return {
      'user': user.toJson(),
    };
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
  Uint8List imageBytes,
) async {
  var urlString = webAPIBaseURL + API().path();
  var url = Uri.parse(urlString);

  final response = await file_client.sendRequest(
    url,
    imageBytes,
    json.encode(request),
  );

  final typedResponse = Response.fromJson(response);
  return typedResponse;
}
