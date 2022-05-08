import 'dart:math';

main() {
  score(num x, num y) {
    Point center = Point(0, 0);
    Point target = Point(x, y);
    if (target.distanceTo(center) <= 1) return ("The player scored 10 points.");
    if (target.distanceTo(center) <= 5) return ("The player scored 5 points.");
    if (target.distanceTo(center) <= 10)
      return ("The player scored 1 point.");
    else
      return ("Dart landed outside the target.");
  }

  print(score(10, 10));
}
