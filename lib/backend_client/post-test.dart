import 'package:http/http.dart' as http;
import 'dart:convert'; // JSON
import '../config/url.dart';

// 接続先のAPI
class API {
  String path(int id) {
    return '/test/' + id.toString();
  }
}

// リクエスト
class Request {
  String param = '';
  Request(this.param);

  // Class -> JSON
  dynamic toJson() {
    return {
      'param': param,
    };
  }
}

// レスポンス
class Response {
  String param = '';

  // JSON -> Class
  Response.fromJson(dynamic rawJson) {
    param = rawJson['param'];
  }
}

// リクエスト送信
Future<Response> sendRequest(int id, Request request) async {
  var urlString = webAPIBaseURL + API().path(id);
  var url = Uri.parse(urlString);
  final response = await http.post(
    url,
    body: json.encode(request.toJson()),
    headers: {'Content-Type': 'application/json'},
  );

  if (response.statusCode == 200) {
    // utf8で受け取る
    final rawString = utf8.decode(response.bodyBytes);
    dynamic rawJson = json.decode(rawString);
    return Response.fromJson(rawJson);
  } else {
    throw ('error');
  }
}
