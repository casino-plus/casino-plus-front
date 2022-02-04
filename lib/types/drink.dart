//
//
//

enum Drink {
  champagne,
  beer,
  brandy,
  cocktail,
  liqueur,
  spirits,
  wine,
}

extension DrinkExt on Drink {
  static final Map<Drink, int> rawValues = {
    Drink.champagne: 0,
    Drink.beer: 1,
    Drink.brandy: 2,
    Drink.cocktail: 3,
    Drink.liqueur: 4,
    Drink.spirits: 5,
    Drink.wine: 6,
  };
  static Drink from(int rawValue) {
    final Drink member = DrinkExt.rawValues.keys
        .firstWhere((key) => DrinkExt.rawValues[key] == rawValue);
    return member;
  }
}
