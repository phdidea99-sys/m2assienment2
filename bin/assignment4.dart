class BankAccount {
  String? accountHolderName;
  int? accountNumber;
  double _balance = 0;

  BankAccount(this.accountHolderName, this.accountNumber, this._balance);

  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print('Deposited: \$${amount.toStringAsFixed(2)}');
    } else {
      print('Invalid deposit amount!');
    }
  }

  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print('Withdrawn: \$${amount.toStringAsFixed(2)}');
    } else if (amount > _balance) {
      print('Insufficient balance! You have \$${_balance.toStringAsFixed(2)} only.');
    } else {
      print('Invalid withdrawal amount!');
    }
  }

  double get balance => _balance;

  void displayAccountInfo() {
    print('Account Holder: $accountHolderName Account Number: $accountNumber Balance: \$${_balance.toStringAsFixed(2)}');
  }
}

void main() {
  BankAccount rahim = BankAccount('Rahim', 1001, 5000);
  BankAccount karim = BankAccount('Karim', 1002, 8000);

  print(' Rahim\'s Account-');
  rahim.displayAccountInfo();
  rahim.deposit(2000);
  print('After Deposit: Balance: \$${rahim.balance.toStringAsFixed(2)}');

  rahim.withdraw(1500);
  print('After Withdrawal: Balance: \$${rahim.balance.toStringAsFixed(2)}');

  print('\n');

  print(' Karim\'s Account-');
  karim.displayAccountInfo();

  karim.deposit(500);
  print('After Deposit: Balance: \$${karim.balance.toStringAsFixed(2)}');

  print('\n Testing Insufficient Balance-');
  karim.withdraw(10000);
}