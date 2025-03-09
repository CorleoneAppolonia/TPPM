void main(List<String> arguments) {
  // Verificăm dacă există cel puțin 3 argumente (minim 1 pereche literă-număr + cuvântul)
  if (arguments.length < 3) {
    print("Please provide a valid input.");
    return;
  }

  // Dicționarul de litere și valorile lor
  Map<String, int> letterValues = {};

  // Parcurgem argumentele, cu excepția ultimului, în pași de 2
  for (int i = 0; i < arguments.length - 1; i += 2) {
    String letter = arguments[i];
    // Pentru siguranță, putem folosi un try-catch în cazul în care nu este număr valid
    int value;
    try {
      value = int.parse(arguments[i + 1]);
    } catch (_) {
      // Dacă nu este număr, afișăm mesaj și ieșim
      print("Invalid number for letter '$letter'.");
      return;
    }
    // Atribuim valoarea în dicționar
    letterValues[letter] = value;
  }

  // Ultimul argument e cuvântul
  String word = arguments.last;

  // Calculăm suma
  int sum = 0;
  for (int i = 0; i < word.length; i++) {
    String char = word[i];
    // Adăugăm valoarea dacă există, altfel 0
    sum += letterValues[char] ?? 0;
  }

  // Afișăm rezultatul
  print(sum);
}
 

 //rulare: terminal:  dart run ex2.dart A 5 B 3 C 9 ABBCC
