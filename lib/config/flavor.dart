//
//
//

enum Flavor {
  Develop, // ローカルサーバー環境
  Staging, // オンラインの練習サーバー環境
  Production, // オンラインの本番サーバー環境
}

// 指定が無いときの接続環境
const defaultFlavor = Flavor.Develop;

// 指定が有るときの接続環境
final Flavor flavor = () {
  // --dart-define=FLAVOR=develop のように指定可能
  const flavorString = String.fromEnvironment('FLAVOR');
  switch (flavorString) {
    case 'develop':
      return Flavor.Develop;
    case 'staging':
      return Flavor.Staging;
    case 'production':
      return Flavor.Production;
    default:
      return defaultFlavor;
  }
}();
