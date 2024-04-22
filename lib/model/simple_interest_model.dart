class SimpleInterstModel {
  final double principle;
  final double time;
  final double rate;

  SimpleInterstModel({
    required this.principle,
    required this.time,
    required this.rate,
  });

  //calculate
  double calculate() {
    return (principle * time * rate) / 100;
  }
}
