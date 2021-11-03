import 'package:transaction_bank_app/models/card.dart';

class Account {
  int accountNumber;
  double? currentBalance;
  Card? card;

  Account(this.accountNumber, {this.currentBalance, this.card});
}
