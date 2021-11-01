import 'package:bill_calculator/assignment_one.dart';
import 'package:bill_calculator/birthdaywishes/birtthdaypage.dart';
import 'package:bill_calculator/calculator.dart';
import 'package:bill_calculator/wishes/wisheshome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "WISHES APP",
      home: BirthdayPage(),
    );
  }
}
