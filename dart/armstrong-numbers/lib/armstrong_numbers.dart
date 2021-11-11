import 'dart:math';

class ArmstrongNumbers {
  bool isArmstrongNumber(int input) {
    String mInt = input.toString();
    return mInt.split('').fold(0, (previousValue, element) => int.parse(previousValue.toString()) + (pow(int.parse(element), mInt.length))).toInt() == input;
  }
}
