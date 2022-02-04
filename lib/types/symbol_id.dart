//
//
//

enum SymbolId {
  // Drink
  champagne,
  beer,
  brandy,
  cocktail,
  liqueur,
  spirits,
  wine,

  // Classic
  bell,
  cherry,
  clover,
  horseshoe,
  luckySeven,

  // Free
  freeorange,
  chip1,
  chip2,
  chip3,
  chip10,

  // Developer
  plClag,
  plCPlusPlus,
  plCSharp,
  plDart,
  plGolang,
  plJava,
  plJavaScript,
  plKotlin,
  plPHP,
  plPython,
  plRuby,
  plSwift,
  plTypeScript,

  // V1
  appIcon,
  spade,
  heart,
  diamond,
  club,
  open,
  v1,
}

extension SymbolIdExt on SymbolId {
  static final Map<SymbolId, int> rawValues = {
    SymbolId.champagne: 0,
    SymbolId.beer: 1,
    SymbolId.brandy: 2,
    SymbolId.cocktail: 3,
    SymbolId.liqueur: 4,
    SymbolId.spirits: 5,
    SymbolId.wine: 6,
    SymbolId.bell: 7,
    SymbolId.cherry: 8,
    SymbolId.clover: 9,
    SymbolId.horseshoe: 10,
    SymbolId.luckySeven: 11,
    SymbolId.freeorange: 12,
    SymbolId.chip1: 13,
    SymbolId.chip2: 14,
    SymbolId.chip3: 15,
    SymbolId.chip10: 16,
    SymbolId.plClag: 17,
    SymbolId.plCPlusPlus: 18,
    SymbolId.plCSharp: 19,
    SymbolId.plDart: 20,
    SymbolId.plGolang: 21,
    SymbolId.plJava: 22,
    SymbolId.plJavaScript: 23,
    SymbolId.plKotlin: 24,
    SymbolId.plPHP: 25,
    SymbolId.plPython: 26,
    SymbolId.plRuby: 27,
    SymbolId.plSwift: 28,
    SymbolId.plTypeScript: 29,
    SymbolId.appIcon: 30,
    SymbolId.spade: 31,
    SymbolId.heart: 32,
    SymbolId.diamond: 33,
    SymbolId.club: 34,
    SymbolId.open: 35,
    SymbolId.v1: 36,
  };
  static SymbolId from(int rawValue) {
    final SymbolId member = SymbolIdExt.rawValues.keys
        .firstWhere((key) => SymbolIdExt.rawValues[key] == rawValue);
    return member;
  }
}
