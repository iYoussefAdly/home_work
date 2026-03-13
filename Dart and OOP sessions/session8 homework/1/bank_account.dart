class BankAccount {
  double _balance = 0;
  set balance(double value) {
    if (value >= 0) {
      _balance = value;
    } else {
      print("Invalid balance");
    }
  }

  double get balance => _balance;
}

