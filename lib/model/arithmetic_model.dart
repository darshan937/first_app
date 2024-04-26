class ArithmeticModel {
  final int first;
  final int second;

  ArithmeticModel({
    required this.first,
    required this.second,
  });

  //sub
  int sub() {
    return first - second;
  }

  //add
  int add() {
    return first + second;
  }

  //multiply
  int multipy() {
    return first * second;
  }

  //divide
  double divide() {
    return first / second;
  }

}
