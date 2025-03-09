void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print("Please provide at least one number.");
    return;
  }

  // 1) Combinăm toate argumentele într-un singur string
  String numarStr = arguments.join('');

  // 2) Convertim la int și incrementăm cu 1
  int numar = int.parse(numarStr) + 1;

  // 3) Împărțim în cifre și le convertim la int
  List<int> cifre = numar.toString().split('').map(int.parse).toList();

  // 4) Afișăm lista de cifre
  print(cifre);
}

//rulare:  cd Lab2

//terminal:$ dart run ex1.dart 9 9 9 sau dart run ex1.dart 1 2 3