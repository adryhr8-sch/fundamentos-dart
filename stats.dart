void main() {
  List<int> arreglo = [1,2,3,8,5,2];

  print("Muestras: $arreglo");
  List<int> a = arreglo.toList();
  a.sort();
  print("Ordenado: $a");
  print("Qty Muestras: ${arreglo.length}");
  print("Media: ${media(arreglo).toStringAsFixed(2)}");
  print("Mediana: ${mediana(arreglo)}");
  print("Moda: ${moda(arreglo)}");
}

double media(List<int> array) {
  return array.reduce((a, b) => a + b) / array.length;
}

int mediana(List<int> array) {
  List<int> copia = array.toList();
  copia.sort();
  return copia[(copia.length / 2).ceil() - 1];
}

int moda(List<int> array) {
  Map<int, int> counts = {};
  for (int i in array) {
    counts[i] = (counts[i] ?? 0) + 1;
  }
  int maxCount = counts.values.reduce((a, b) => a > b ? a : b);
  return counts.entries.firstWhere((entry) => entry.value == maxCount).key;
}
