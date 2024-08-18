class Account  {
  double balance;

  String id;

  Account({required this.id, required this.balance});
void withDraw(double amount){

  balance-=amount;
}
  void deposit(double amount ){
  balance+=amount;
  }
}
