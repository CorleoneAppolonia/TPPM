class Client {
  // Atribut privat pentru nume care nu poate fi schimbat (final)
  final String _name;

  // Atribut privat pentru suma cumparaturilor
  double _purchasesAmount = 0.0;

  // Constructor care initializeaza numele
  Client(this._name);

  // Getter pentru a obtine suma cumparaturilor
  double get() {
    return _purchasesAmount;
  }

  // Metoda pentru adaugarea unei valori la suma cumparaturilor
  void add(double amount) {
    if (amount > 0) {
      _purchasesAmount += amount;
    }
  }

  // Getter pentru a obtine numele clientului
  String get name => _name;
}

class LoyalClient extends Client {
  // Atribut privat pentru suma cumparaturilor cu discount
  double _loyalPurchasesAmount = 0.0;

  // Constructor care apeleaza constructorul clasei parinte
  LoyalClient(String name) : super(name);

  // Getter pentru suma cumparaturilor cu nume diferit fata de cel din clasa parinte
  double getLoyalAmount() {
    return _loyalPurchasesAmount;
  }

  // Metoda pentru aplicarea discountului de 10% la suma din clasa parinte
  void discount() {
    _loyalPurchasesAmount = super.get() * 0.9;
  }
}

// Program de test
void main() {
  // Creeaza un client obisnuit
  var client = Client("Ion Popescu");
  client.add(100.0);
  print("Client: ${client.name}, Suma cumparaturi: ${client.get()}");

  // Creeaza un client fidel
  var loyalClient = LoyalClient("Maria Ionescu");
  loyalClient.add(200.0);

  // Nu putem folosi super in main, folosim metoda get() directa
  print(
    "Client fidel: ${loyalClient.name}, Suma cumparaturi (fara discount): ${loyalClient.get()}",
  );

  // aplic discountul
  loyalClient.discount();

  
  print("Client fidel dupa discount: ${loyalClient.name}");
  print("Suma cumparaturi originala: ${loyalClient.get()}");
  print("Suma cumparaturi cu discount: ${loyalClient.getLoyalAmount()}");
}
