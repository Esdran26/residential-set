import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Color primaryColor = const Color(0xff513baa);

TextStyle fontNormal = const TextStyle(
  fontWeight: FontWeight.w600,
  fontFamily: 'NunitoSans',
  color: Color.fromRGBO(30, 39, 46, 1.0),
);

TextStyle fontNormalThrough = const TextStyle(
  fontWeight: FontWeight.w600,
  fontFamily: 'NunitoSans',
  color: Color.fromRGBO(30, 39, 46, 1.0),
  decoration: TextDecoration.lineThrough,
);

TextStyle fontNormalBold = const TextStyle(
    fontWeight: FontWeight.w800,
    fontFamily: 'NunitoSans',
    color: Color.fromRGBO(30, 39, 46, 1.0));

TextStyle fontNormalButton = const TextStyle(
    fontWeight: FontWeight.w600, fontFamily: 'NunitoSans', fontSize: 17.0);

TextStyle fontNormalGrey = const TextStyle(
    fontWeight: FontWeight.w600,
    fontFamily: 'NunitoSans',
    color: CupertinoColors.systemGrey);

TextStyle fontBig = const TextStyle(
    fontWeight: FontWeight.w600,
    fontFamily: 'NunitoSans',
    fontSize: 25.0,
    color: Color.fromRGBO(45, 52, 54, 1.0));

TextStyle fontBigSurvey = const TextStyle(
    fontWeight: FontWeight.w600,
    fontFamily: 'NunitoSans',
    fontSize: 15.0,
    color: Color.fromRGBO(45, 52, 54, 1.0));

TextStyle fontBigSub = const TextStyle(
    fontWeight: FontWeight.w700,
    fontFamily: 'NunitoSans',
    fontSize: 20.0,
    color: Color.fromRGBO(45, 52, 54, 1.0));

TextStyle fontList = const TextStyle(
    fontWeight: FontWeight.w600,
    fontFamily: 'NunitoSans',
    fontSize: 13.0,
    color: Color.fromRGBO(30, 39, 46, 1.0));

TextStyle fontListGrey = const TextStyle(
    fontWeight: FontWeight.w600,
    fontFamily: 'NunitoSans',
    fontSize: 13.0,
    color: CupertinoColors.systemGrey);

TextStyle fontListSub = const TextStyle(
    fontWeight: FontWeight.w600,
    fontFamily: 'NunitoSans',
    fontSize: 12.0,
    color: CupertinoColors.systemBlue);

TextStyle fontSmall = const TextStyle(
    fontWeight: FontWeight.w600,
    fontFamily: 'NunitoSans',
    fontSize: 11.0,
    color: Color.fromRGBO(30, 39, 46, 1.0));

TextStyle fontSmallGrey = const TextStyle(
    fontWeight: FontWeight.w600,
    fontFamily: 'NunitoSans',
    fontSize: 11.0,
    color: CupertinoColors.systemGrey);

TextStyle fontSmallSub = const TextStyle(
    fontWeight: FontWeight.w800,
    fontFamily: 'NunitoSans',
    fontSize: 15.0,
    color: Color.fromRGBO(45, 52, 54, 1.0));

TextStyle labelDropdown = TextStyle(
    fontWeight: FontWeight.w600,
    fontFamily: 'NunitoSans',
    fontSize: 12.0,
    color: Colors.grey[600]);

String apiType = 'https://lab.cuental.com';
