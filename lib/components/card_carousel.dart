import 'package:transaction_bank_app/components/card_item.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CardCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
          enableInfiniteScroll: false,
          reverse: false,
          viewportFraction: 0.86,
          height: 230),
      items: <Widget>[
        CardItemComponent(),
        CardItemComponent(),
        CardItemComponent(),
      ],
    );
  }
}
