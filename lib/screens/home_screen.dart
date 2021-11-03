import 'package:transaction_bank_app/components/card_carousel.dart';
import 'package:transaction_bank_app/components/card_list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            IconButton(
                onPressed: () =>
                    {debugPrint("cerrar sesion"), Navigator.pop(context)},
                icon: const Icon(Icons.close)),
            _textsHeader(context),
            _cards(context),
            _recent(context),
          ],
        ),
      ),
    );
  }

  // Widget _customAppBar() {
  //   return Padding(
  //     padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
  //     child: Row(
  //       children: <Widget>[
  //         IconButton(onPressed: onPressed, icon: icon)
  //       ],
  //     ),
  //     )
  // }
  Widget _textsHeader(context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Hola Carlos',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Text(
              'Haz tu siguiente',
              style: Theme.of(context).textTheme.headline1,
            ),
            Text(
              'transferencia',
              style: Theme.of(context).textTheme.headline2,
            ),
          ],
        ));
  }

  Widget _cards(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text(
            'Tarjetas',
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        CardCarousel()
      ],
    );
  }

  Widget _recent(context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
              left: 30.0, right: 30.0, top: 5.0, bottom: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                'Recientes',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                'Ver todas',
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: CardList(),
          // child: JobList(this.recentJobs),
        ),
      ],
    );
  }
}
