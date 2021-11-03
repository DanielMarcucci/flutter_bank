import 'package:flutter/material.dart';

class CompactCardItem extends StatelessWidget {
  // Job job;

  // CompactItemJob(this.job);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 7.0),
      child: Container(
        decoration: _boxDecoration(),
        height: 70.0,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                // _companyLogo(),
                _infoJobTexts(context),
              ],
            ),
            const Text(
              'Q10,000.00',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w800),
            ),
          ],
        ),
      ),
    );
  }

  BoxDecoration _boxDecoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10.0),
      boxShadow: <BoxShadow>[
        BoxShadow(
          color: Colors.black26,
          offset: Offset(2.0, 2.0),
          blurRadius: 8.0,
        ),
      ],
    );
  }

  Widget _companyLogo() {
    return Padding(
      padding: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
      child: Image.network(
          "https://img.utdstc.com/icon/102/4be/1024be4462ba7a5daf2fd01c3ba492c859673e32af8a354cd3a494ce12d1132f:200"),
      // child: Image.network(this.job.company.urlLogo),
    );
  }

  Widget _infoJobTexts(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        // Text(
        //   // this.job.company.name,
        //   "Netflix",
        //   style: Theme.of(context).textTheme.subtitle1,
        // ),
        Text(
          // this.job.role,
          "Pago mensual",
          style: Theme.of(context).textTheme.headline4,
        ),
        SizedBox(height: 3.0),
        Row(
          children: <Widget>[
            Icon(
              Icons.calendar_today,
              color: Theme.of(context).highlightColor,
              size: 14.0,
            ),
            SizedBox(width: 3.0),
            Text(
              // this.job.location,
              "01/01/2020",
              style: Theme.of(context).textTheme.subtitle1,
            )
          ],
        ),
      ],
    );
  }

  Widget _favIcon(context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.0, right: 20.0),
      child: Icon(
        Icons.favorite_border,
        color: Theme.of(context).highlightColor,
      ),
    );
  }
}
