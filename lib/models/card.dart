import 'package:transaction_bank_app/models/card_type.dart';

class Card {
  String name;
  String cardNumber;
  double? authorizedAmount;
  DateTime authExpDate;
  CardType cardType;

  Card(this.name, this.cardNumber, this.authExpDate, this.cardType,
      {this.authorizedAmount});
}
