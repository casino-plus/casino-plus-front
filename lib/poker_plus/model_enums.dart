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

//

enum NumberId {
  back,
  num1,
  num2,
  num3,
  num4,
  num5,
  num6,
  num7,
  num8,
  num9,
  num10,
  num11,
  num12,
  num13,
  joker,
}

extension NumberIdExt on NumberId {
  static final Map<NumberId, int> rawValues = {
    NumberId.back: 0,
    NumberId.num1: 1,
    NumberId.num2: 2,
    NumberId.num3: 3,
    NumberId.num4: 4,
    NumberId.num5: 5,
    NumberId.num6: 6,
    NumberId.num7: 7,
    NumberId.num8: 8,
    NumberId.num9: 9,
    NumberId.num10: 10,
    NumberId.num11: 11,
    NumberId.num12: 12,
    NumberId.num13: 13,
    NumberId.joker: 99,
  };
  static NumberId? from(int rawValue) {
    final member = NumberIdExt.rawValues.keys
        .firstWhere((key) => NumberIdExt.rawValues[key] == rawValue);
    return member;
  }
}

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

enum CardId {
  back,
  spade1,
  spade2,
  spade3,
  spade4,
  spade5,
  spade6,
  spade7,
  spade8,
  spade9,
  spade10,
  spade11,
  spade12,
  spade13,
  heart1,
  heart2,
  heart3,
  heart4,
  heart5,
  heart6,
  heart7,
  heart8,
  heart9,
  heart10,
  heart11,
  heart12,
  heart13,
  diamond1,
  diamond2,
  diamond3,
  diamond4,
  diamond5,
  diamond6,
  diamond7,
  diamond8,
  diamond9,
  diamond10,
  diamond11,
  diamond12,
  diamond13,
  club1,
  club2,
  club3,
  club4,
  club5,
  club6,
  club7,
  club8,
  club9,
  club10,
  club11,
  club12,
  club13,
  blackJocker,
  whiteJocker,
}

extension CardIdExt on CardId {
  static final Map<CardId, int> rawValues = {
    CardId.back: 1000,
    CardId.spade1: 1001,
    CardId.spade2: 1002,
    CardId.spade3: 1003,
    CardId.spade4: 1004,
    CardId.spade5: 1005,
    CardId.spade6: 1006,
    CardId.spade7: 1007,
    CardId.spade8: 1008,
    CardId.spade9: 1009,
    CardId.spade10: 1010,
    CardId.spade11: 1011,
    CardId.spade12: 1012,
    CardId.spade13: 1013,
    CardId.heart1: 2001,
    CardId.heart2: 2002,
    CardId.heart3: 2003,
    CardId.heart4: 2004,
    CardId.heart5: 2005,
    CardId.heart6: 2006,
    CardId.heart7: 2007,
    CardId.heart8: 2008,
    CardId.heart9: 2009,
    CardId.heart10: 2010,
    CardId.heart11: 2011,
    CardId.heart12: 2012,
    CardId.heart13: 2013,
    CardId.diamond1: 3001,
    CardId.diamond2: 3002,
    CardId.diamond3: 3003,
    CardId.diamond4: 3004,
    CardId.diamond5: 3005,
    CardId.diamond6: 3006,
    CardId.diamond7: 3007,
    CardId.diamond8: 3008,
    CardId.diamond9: 3009,
    CardId.diamond10: 3010,
    CardId.diamond11: 3011,
    CardId.diamond12: 3012,
    CardId.diamond13: 3013,
    CardId.club1: 4001,
    CardId.club2: 4002,
    CardId.club3: 4003,
    CardId.club4: 4004,
    CardId.club5: 4005,
    CardId.club6: 4006,
    CardId.club7: 4007,
    CardId.club8: 4008,
    CardId.club9: 4009,
    CardId.club10: 4010,
    CardId.club11: 4011,
    CardId.club12: 4012,
    CardId.club13: 4013,
    CardId.blackJocker: 9098,
    CardId.whiteJocker: 9099,
  };
  static CardId? from(int rawValue) {
    final member = CardIdExt.rawValues.keys
        .firstWhere((key) => CardIdExt.rawValues[key] == rawValue);
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
