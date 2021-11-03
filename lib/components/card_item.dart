import 'package:flutter/material.dart';

class CardItemComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Container(
          decoration: _boxDecoration(context),
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Carlos Daniel Marcucci Rivera',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500)),
                _infoCardTexts(context),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text(
                      'Q40,000.00',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w800),
                    ),
                    _cardTypeLogo()
                  ],
                )
              ],
            ),
          ),
        ));
  }

  BoxDecoration _boxDecoration(context) {
    return BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const <BoxShadow>[
          BoxShadow(color: Colors.black45, offset: Offset(4, 4), blurRadius: 10)
        ]);
  }

  Widget _cardTypeLogo() {
    return ClipRRect(
      child: Image.network(
        'https://logos-marcas.com/wp-content/uploads/2020/09/Mastercard-Logo.png',
        // https://www.montyhalls.co.uk/wp-content/uploads/2014/11/logo-visa.png
        width: 60,
      ),
    );
  }

  Widget _infoCardTexts(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('1234 1234 1234 1234',
            style: Theme.of(context).textTheme.headline3),
        const Text(
          '12/34',
          style: TextStyle(fontSize: 13, color: Color(0XFFB7B7D2)),
        )
      ],
    );
  }
}
