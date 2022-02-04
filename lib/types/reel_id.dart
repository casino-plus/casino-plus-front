//
//
//

enum ReelId {
  classicL,
  classicC,
  classicR,
  freeL,
  freeC,
  freeR,
  developerL,
  developerC,
  developerR,
  v1L,
  v1C,
  v1R,
}

extension ReelIdExt on ReelId {
  static final Map<ReelId, int> rawValues = {
    ReelId.classicL: 0,
    ReelId.classicC: 1,
    ReelId.classicR: 2,
    ReelId.freeL: 3,
    ReelId.freeC: 4,
    ReelId.freeR: 5,
    ReelId.developerL: 6,
    ReelId.developerC: 7,
    ReelId.developerR: 8,
    ReelId.v1L: 9,
    ReelId.v1C: 10,
    ReelId.v1R: 11,
  };
  static ReelId from(int rawValue) {
    final ReelId member = ReelIdExt.rawValues.keys
        .firstWhere((key) => ReelIdExt.rawValues[key] == rawValue);
    return member;
  }
}
