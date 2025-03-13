// open in terminal si dau coamanda dart ex1.dart

class Queue<T> {
  // lista interna pentru stocarea elementelor cozii
  List<T> _elements = [];

  // adaug un element la sfarsitul cozii
  void push(T element) {
    _elements.add(element);
  }

  // elimin si returneaza elementul din fata cozii
  // Daca coada este goala, returneaza null
  T? pop() {
    if (_elements.isEmpty) {
      return null;
    }
    return _elements.removeAt(0);
  }

  // returnez ultimul element din coada fara a-l elimina
  // Daca coada este goala, returneaza null
  T? back() {
    if (_elements.isEmpty) {
      return null;
    }
    return _elements.last;
  }

  // returnrez primul element din coada fara a-l elimina
  // Daca coada este goala, returneaza null
  T? front() {
    if (_elements.isEmpty) {
      return null;
    }
    return _elements.first;
  }

  // Verifica daca coada este goala
  // Returneaza true daca coada este goala, false in caz contrar
  bool isEmpty() {
    return _elements.isEmpty;
  }

  // Suprascrie metoda toString pentru a afisa continutul cozii
  // Acest lucru permite afisarea directa a obiectului coada
  @override
  String toString() {
    return _elements.toString();
  }
}

void main() {
  Queue<int> queue = Queue<int>();

  print("Este coada goala? ${queue.isEmpty()}");

  queue.push(10);
  queue.push(20);
  queue.push(30);

  print("Coada: ${queue.toString()}");
  print("Primul element: ${queue.front()}");
  print("Ultimul element: ${queue.back()}");

  print("Element eliminat: ${queue.pop()}");
  print("Coada dupa eliminare: ${queue.toString()}");

  print("Este coada goala? ${queue.isEmpty()}");
}
