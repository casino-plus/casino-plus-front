import 'flavor.dart';

// Flavorごとの設定値

class FlavorConfig {
  final Flavor flavor;
  final String appClientID;
  final String ceterHostUrl;
  final bool shouldUseStub;

  const FlavorConfig({
    required this.flavor,
    required this.appClientID,
    required this.ceterHostUrl,
    required this.shouldUseStub,
  });
}

const List<FlavorConfig> flavorConfigs = [
  // Develop
  FlavorConfig(
    flavor: Flavor.develop,
    appClientID: 'none',
    ceterHostUrl: 'no-host',
    shouldUseStub: true,
  ),
  // Staging
  FlavorConfig(
    flavor: Flavor.staging,
    appClientID: 'sampleclientid.ios',
    ceterHostUrl: 'http://localhost:3000',
    shouldUseStub: false,
  ),
  // Production
  FlavorConfig(
    flavor: Flavor.production,
    appClientID: 'sampleclientid.browser',
    ceterHostUrl: 'https://.com',
    shouldUseStub: false,
  ),
];

final FlavorConfig flavorConfig =
    flavorConfigs.firstWhere((con) => con.flavor == flavor);
