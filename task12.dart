// Task: Classlardan istifadə edərək bank hesabı yaradın. Classın daxilində hesab nömrəsi,  hesabın sahibinin adı və hesabın balansı saxlanılmalıdı Classın daxilində 3 funksiya yazın. 1- funksiya hesab məlumatlarını çap etsin. 2- funksiya hesaba mədaxil etmək üçün 3- funksiya hesabdan məxaric etmək üçün yazılmalıdır

class BankAccount {
  final String accountNumber;
  final String accountName;
  int accountBalance;
  BankAccount(
      {required this.accountBalance,
      required this.accountName,
      required this.accountNumber});

  void func1() {
    print(
        '$accountName adlı və $accountNumber istifadəçi balansın $accountBalance \$ qədərdir. ');
  }

  void funcAddMoney({required int addedValue}) {
    accountBalance += addedValue;
    print(accountBalance);
  }

  void funcSubtractMoney({required int subtractedValue}) {
    accountBalance -= subtractedValue;
    print(accountBalance);
  }
}

void main() {
  BankAccount faridAccount = BankAccount(
      accountBalance: 100, accountName: 'Farid', accountNumber: '12345');
  print(faridAccount.accountBalance);
  faridAccount.funcAddMoney(addedValue: 100); //200
  faridAccount.funcSubtractMoney(subtractedValue: 50); //150
}
