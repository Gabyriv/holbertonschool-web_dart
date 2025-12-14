List<double> convertToF(List<double> temperaturesInC) {
    List<String> temperaturesInF = temperaturesInC.map((c) => ((c * 9/5) + 32).toStringAsFixed(2)).toList();
    return temperaturesInF.map((f) => double.parse(f)).toList();
}
