main() {
  int quantityOfBottles = 99;
  String? bottlesOfBeer, bottlesOfBeerDiff, phrase;

  while (quantityOfBottles >= 0) {
    switch (quantityOfBottles) {
      case 1:
        bottlesOfBeer = "$quantityOfBottles bottle";
        quantityOfBottles--;
        bottlesOfBeerDiff = "No more bottles";
        phrase =
            "$bottlesOfBeer of beer on the wall, $bottlesOfBeer of beer.\nTake one down and pass it around, $bottlesOfBeerDiff of beer on the wall.";
        print(phrase);
        break;

      case 0:
        bottlesOfBeer = "No more bottles";
        quantityOfBottles = 99;
        bottlesOfBeerDiff = "$quantityOfBottles bottles";
        phrase =
            "$bottlesOfBeer of beer on the wall, $bottlesOfBeer of beer.\nTake one down and pass it around, $bottlesOfBeerDiff of beer on the wall.";
        print(phrase);
        quantityOfBottles = -1;
        break;

      default:
        bottlesOfBeer = "$quantityOfBottles bottles";
        quantityOfBottles--;
        bottlesOfBeerDiff = "$quantityOfBottles bottles";
        phrase =
            "$bottlesOfBeer of beer on the wall, $bottlesOfBeer of beer.\nTake one down and pass it around, $bottlesOfBeerDiff of beer on the wall.";
        print(phrase);
        break;
    }
  }
}
