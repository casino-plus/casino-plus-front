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
