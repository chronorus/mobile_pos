import 'package:flutter/material.dart';

import 'common/CustomTextStyle.dart';
import 'common/HexColor.dart';

class ScanBarcode extends StatefulWidget {
  @override
  _ScanBarcodeState createState() => _ScanBarcodeState();
}

class _ScanBarcodeState extends State<ScanBarcode> {
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
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 10.0,
            ),
            Text(
              'รหัสสินค้า',
              style: Theme.of(context).textTheme.bodyText2,
            ),
            TextField(
              style: CustomTextStyle.body1(context),
              decoration: new InputDecoration(
                  labelStyle: const TextStyle(color: Colors.grey),
                  hintStyle: CustomTextStyle.body1(context),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: HexColor('#C4C4C4'), width: 15.0),
                      borderRadius: BorderRadius.circular(8.0))),
            ),
            SizedBox(height: 10.0),
            Text('--------- หรือ ---------'),
            SizedBox(height: 10.0),
            Container(
              height: 300.0,
              color: Colors.transparent,
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8.0)
                  ),
                  child: new Center(
                    child: new Text("Barcode scanner"),
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
