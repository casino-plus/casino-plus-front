import 'flavor.dart';

class WebAPIConfig {
  final String appClientID;
  final String host;
  final bool useStub;

  WebAPIConfig({
    required this.appClientID,
    required this.host,
    required this.useStub,
  });
}

// 設定値
final WebAPIConfig webAPI = () {
  switch (flavor) {
    case Flavor.noServer:
      return WebAPIConfig(
        appClientID: 'none',
        host: 'no-host',
        useStub: true,
      );

    case Flavor.develop:
      return WebAPIConfig(
        appClientID: 'casinoplus.browser',
        host: 'http://localhost:3000',
        useStub: false,
      );

    case Flavor.staging:
      return WebAPIConfig(
        appClientID: 'casinoplus.browser',
        host: 'https://test',
        useStub: false,
      );

    case Flavor.production:
      throw Exception('この環境はまだ実装されていません');
  }
}();
