import 'bank_account.dart';

void main() {
  BankAccount account = BankAccount();
  print('Initial balance: ${account.balance}');
  account.balance = 500;
  print('Updated balance: ${account.balance}');
  account.balance = -100;
  print('Final balance: ${account.balance}');
}

