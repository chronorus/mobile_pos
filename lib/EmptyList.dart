import 'package:flutter/material.dart';
import 'package:mobile_pos/ScanBarcode.dart';

import 'common/HexColor.dart';

class EmptyList extends StatefulWidget {
  @override
  _EmptyListState createState() => _EmptyListState();
}

class _EmptyListState extends State<EmptyList> {
  var Total = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).backgroundColor,
        title: Text('รายการสินค้า'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 32.0, right: 32.0, top: 10.0),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 30.0,
            ),
            ButtonTheme(
              height: 50.0,
              minWidth: 350.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: RaisedButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset('images/basket 1.png'),
                    SizedBox(
                      width: 20.0,
                    ),
                    Text('เพิ่มรายการสินค้า',
                        style: Theme.of(context).textTheme.headline1),
                  ],
                ),
                color: HexColor('#CBD9F3'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ScanBarcode(),
                      ));
                },
              ),
            ),
            Spacer(),
            Container(
              height: 60.0,
              child: Row(
                children: <Widget>[Text('ทั้งหมด $Total ชิ้น')],
              ),
            ),
            Container(
              height: 84.0,
              child: Text(
                'ยืนยันรายการ',
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
