import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_pos/common/HexColor.dart';

class CustomTextStyle {
  static TextStyle body1(BuildContext context) {
    return Theme.of(context).textTheme.bodyText1.copyWith(
          fontSize: 18.0,
          color: HexColor('#FFFFFF'),
          fontFamily: 'mitr',
        );
  }

  static TextStyle body2(BuildContext context) {
    return Theme.of(context).textTheme.bodyText1.copyWith(
        fontSize: 18.0,
        color: HexColor('#FFFFFF'),
        fontFamily: 'mitr',
        fontWeight: FontWeight.w300);
  }

  static TextStyle body3(BuildContext context) {
    return Theme.of(context).textTheme.bodyText1.copyWith(
        fontSize: 24.0,
        color: HexColor('#FFFFFF'),
        fontFamily: 'mitr',
        fontWeight: FontWeight.normal);
  }
}
