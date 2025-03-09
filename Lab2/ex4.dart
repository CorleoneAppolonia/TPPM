void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print("Please provide a number n.");
    return;
  }

  int n = int.parse(arguments[0]); // Convertim inputul în număr
  Map<int, int> grupuri = {}; // Dicționar pentru a număra câte elemente are fiecare sumă de cifre

  // Funcție pentru a calcula suma cifrelor unui număr
  int sumaCifrelor(int num) {
    return num.toString().split('').map(int.parse).reduce((a, b) => a + b);
  }

  // Parcurgem numerele de la 1 la n și grupăm după suma cifrelor
  for (int i = 1; i <= n; i++) {
    int suma = sumaCifrelor(i);
    grupuri[suma] = (grupuri[suma] ?? 0) + 1;
  }

  // Găsim dimensiunea maximă a unui grup
  int maxSize = grupuri.values.reduce((a, b) => a > b ? a : b);

  // Numărăm câte grupuri au această dimensiune maximă
  int numarGrupuriMaxime = grupuri.values.where((v) => v == maxSize).length;

  print(numarGrupuriMaxime);
}

//rulare: dart run ex4.dart 13 sau dart run ex4.dart 30