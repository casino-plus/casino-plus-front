//
//
//

enum SuitId {
  back,
  spade,
  heart,
  diamond,
  club,
  joker,
}

extension SuitIdExt on SuitId {
  static final Map<SuitId, int> rawValues = {
    SuitId.back: 0,
    SuitId.spade: 1,
    SuitId.heart: 2,
    SuitId.diamond: 3,
    SuitId.club: 4,
    SuitId.joker: 99,
  };
  static SuitId from(int rawValue) {
    final SuitId member = SuitIdExt.rawValues.keys
        .firstWhere((key) => SuitIdExt.rawValues[key] == rawValue);
    return member;
  }
}
