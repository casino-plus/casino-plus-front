//
//
//

enum GameId {
  pokerPlus,
}

extension GameIdExt on GameId {
  static final Map<GameId, int> rawValues = {
    GameId.pokerPlus: 1,
  };
  static GameId from(int rawValue) {
    final GameId member = GameIdExt.rawValues.keys
        .firstWhere((key) => GameIdExt.rawValues[key] == rawValue);
    return member;
  }
}
