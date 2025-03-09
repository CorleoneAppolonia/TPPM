void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print("Please provide a list of numbers.");
    return;
  }

  // Transformăm argumentele într-o listă de int
  final numbers = arguments.map(int.parse).toList();

  // Mulțime de "perechi" bune, fiecare pereche fiind {i, j}
  final goodPairs = <Set<int>>{};

  // Parcurgem listei cu i < j
  for (int i = 0; i < numbers.length; i++) {
    for (int j = i + 1; j < numbers.length; j++) {
      // Condiția de "pereche bună"
      if (numbers[i] == numbers[j]) {
        // Reprezentăm perechea (i, j) ca un set neordonat
        goodPairs.add({i, j});
      }
    }
  }

  // Afișăm numărul de perechi bune
  print(goodPairs.length);
}


//for running:  in terminal $ dart run ex3.dart 1 2 3 1 2 3 1