import 'package:flutter/material.dart';
import 'package:mobile_pos/EmptyList.dart';
import 'common/HexColor.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).backgroundColor,
        title: Text('วิธีชำระเงิน'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 32.0, right: 32.0, top: 102.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ButtonTheme(
              height: 100.0,
              minWidth: 350.0,
              child: RaisedButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset('images/supermarket 1.png'),
                    SizedBox(width: 20.0,),
                    Text(
                      'ขายสินค้า',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ],
                ),
                color: HexColor('#DF2B6C'),
                onPressed: () {Navigator.push(context, MaterialPageRoute(
                      builder: (context) => EmptyList(),
                    ));},
              ),
            ),
            SizedBox(height: 30.0,),
            ButtonTheme(
              height: 100.0,
              minWidth: 350.0,
              child: RaisedButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset('images/Menu report.png'),
                    SizedBox(width: 20.0,),
                    Text(
                      'รายงาน',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ],
                ),
                color: HexColor('#DF2B6C'),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
