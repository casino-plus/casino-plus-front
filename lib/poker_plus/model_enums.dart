//
//
//

enum BetLevel {
  min,
  mid,
  max,
}

extension BetLevelExt on BetLevel {
  static final Map<BetLevel, int> rawValues = {
    BetLevel.min: 0,
    BetLevel.mid: 1,
    BetLevel.max: 2,
  };
  static BetLevel? from(int rawValue) {
    final member = BetLevelExt.rawValues.keys
        .firstWhere((key) => BetLevelExt.rawValues[key] == rawValue);
    return member;
  }
}

//

enum Seat {
  s1,
  s2,
  s3,
  s4,
}

extension SeatExt on Seat {
  static final Map<Seat, int> rawValues = {
    Seat.s1: 1,
    Seat.s2: 2,
    Seat.s3: 3,
    Seat.s4: 4,
  };
  static Seat? from(int rawValue) {
    final member = SeatExt.rawValues.keys
        .firstWhere((key) => SeatExt.rawValues[key] == rawValue);
    return member;
  }
}

//

enum DealerStep {
  waitingBet,
  shuffle,
  waitingPut,
  showdown,
}

extension DealerStepExt on DealerStep {
  static final Map<DealerStep, int> rawValues = {
    DealerStep.waitingBet: 0,
    DealerStep.shuffle: 1,
    DealerStep.waitingPut: 2,
    DealerStep.showdown: 3,
  };
  static DealerStep? from(int rawValue) {
    final member = DealerStepExt.rawValues.keys
        .firstWhere((key) => DealerStepExt.rawValues[key] == rawValue);
    return member;
  }
}

//

enum PlayerStep {
  bet,
  waitingShuffle,
  put,
  waitingShowdown,
}

extension PlayerStepExt on PlayerStep {
  static final Map<PlayerStep, int> rawValues = {
    PlayerStep.bet: 0,
    PlayerStep.waitingShuffle: 1,
    PlayerStep.put: 2,
    PlayerStep.waitingShowdown: 3,
  };
  static PlayerStep? from(int rawValue) {
    final member = PlayerStepExt.rawValues.keys
        .firstWhere((key) => PlayerStepExt.rawValues[key] == rawValue);
    return member;
  }
}

//

enum Combo {
  // initial
  start,
  // need 3
  rsf,
  sf,
  fullHouse,
  flush,
  straight,
  twoPairs,
  double,
  triple,
  miracle,
  // need 2
  kingJoker,
  numberPair,
  suitPair,
  // need 1
  joker,
  // need 0
  noPairs,
}

extension ComboExt on Combo {
  static final Map<Combo, int> rawValues = {
    Combo.start: 0,
    Combo.rsf: 1,
    Combo.sf: 2,
    Combo.fullHouse: 3,
    Combo.flush: 4,
    Combo.straight: 5,
    Combo.twoPairs: 6,
    Combo.double: 7,
    Combo.triple: 8,
    Combo.miracle: 9,
    Combo.kingJoker: 10,
    Combo.numberPair: 11,
    Combo.suitPair: 12,
    Combo.joker: 13,
    Combo.noPairs: 14,
  };
  static Combo? from(int rawValue) {
    final member = ComboExt.rawValues.keys
        .firstWhere((key) => ComboExt.rawValues[key] == rawValue);
    return member;
  }
}

//

enum OuterPartId {
  diamond12,
  club11,
  spade13,
  heart1,
}

extension OuterPartIdExt on OuterPartId {
  static final Map<OuterPartId, int> rawValues = {
    OuterPartId.diamond12: 3012,
    OuterPartId.club11: 4011,
    OuterPartId.spade13: 1013,
    OuterPartId.heart1: 2001,
  };
  static OuterPartId? from(int rawValue) {
    final member = OuterPartIdExt.rawValues.keys
        .firstWhere((key) => OuterPartIdExt.rawValues[key] == rawValue);
    return member;
  }
}

//

enum InnerPartId {
  club,
  heart,
  joker,
  diamond,
}

extension InnerPartIdExt on InnerPartId {
  static final Map<InnerPartId, int> rawValues = {
    InnerPartId.club: 4,
    InnerPartId.heart: 2,
    InnerPartId.joker: 99,
    InnerPartId.diamond: 3,
  };
  static InnerPartId? from(int rawValue) {
    final member = InnerPartIdExt.rawValues.keys
        .firstWhere((key) => InnerPartIdExt.rawValues[key] == rawValue);
    return member;
  }
}
