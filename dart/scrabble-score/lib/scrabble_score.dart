int score(String input) {
  int res = 0;
  input.split('').forEach((element) {
    res += setPoint(element.toLowerCase());
  });

  return res;
}

int setPoint(String e) {
  var point = 0;
  if (e.contains("a") ||
      e.contains("e") ||
      e.contains("i") ||
      e.contains("o") ||
      e.contains("u") ||
      e.contains("l") ||
      e.contains("n") ||
      e.contains("r") ||
      e.contains("s") ||
      e.contains("t")) {
    point = 1;
  } else if (e.contains("d") || e.contains("g")) {
    point = 2;
  } else if (e.contains("b") ||
      e.contains("c") ||
      e.contains("m") ||
      e.contains("p")) {
    point = 3;
  } else if (e.contains("f") ||
      e.contains("h") ||
      e.contains("v") ||
      e.contains("w") ||
      e.contains("y")) {
    point = 4;
  } else if (e.contains("k")) {
    point = 5;
  } else if (e.contains("j") || e.contains("x")) {
    point = 8;
  } else if (e.contains("q") || e.contains("z")) {
    point = 10;
  }
  return point;
}
