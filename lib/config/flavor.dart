//
//
//

enum Flavor {
  develop, // ローカルサーバー環境
  staging, // オンラインの練習サーバー環境
  production, // オンラインの本番サーバー環境
}

// 指定が無いときの接続環境
const defaultFlavor = Flavor.develop;

// 指定が有るときの接続環境
final Flavor flavor = () {
  // --dart-define=FLAVOR=develop のように指定可能
  const flavorString = String.fromEnvironment('FLAVOR');
  switch (flavorString) {
    case 'develop':
      return Flavor.develop;
    case 'staging':
      return Flavor.staging;
    case 'production':
      return Flavor.production;
    default:
      return defaultFlavor;
  }
}();
