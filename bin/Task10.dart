void main() {
  BankAccount account1 = BankAccount("123456", 1000);
  BankAccount account2 = BankAccount("789012", 2000);

  account1.deposit(500);
  account1.displayBalance();

  account2.withdraw(1000);
  account2.displayBalance();

  
  Set<BankAccount> accountSet = {account1, account2};

  print("Total balance of all accounts: \$${BankAccount.TotalBalance(accountSet)}");
}


class BankAccount {
  String _accountNumber;
  double _balance;

  BankAccount(this._accountNumber, this._balance);

  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print("Deposit of \$$amount successful.");
    } else {
      print("Invalid deposit amount.");
    }
  }

  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print("Withdrawal of \$$amount successful.");
    } else {
      print("Insufficient funds or invalid withdrawal amount.");
    }
  }

  void displayBalance() {
    print("Current balance: \$$balance");
  }

  double get balance => _balance;

  static double TotalBalance(Set<BankAccount> accounts) {
    double Balance = 0;
    for (var account in accounts) {
      Balance += account.balance;
    }
    return Balance;
  }
}


