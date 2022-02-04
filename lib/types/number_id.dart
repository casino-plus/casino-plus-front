//
//
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
