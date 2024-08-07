List<double> convertToF(List<double> temperaturesInC) {
  List<double> temperaturesInF = [];
  for (var temp in temperaturesInC) {
    double tempInF = (temp * 9 / 5) + 32;
    temperaturesInF.add(double.parse(tempInF.toStringAsFixed(2)));
  }
  return temperaturesInF;
}
