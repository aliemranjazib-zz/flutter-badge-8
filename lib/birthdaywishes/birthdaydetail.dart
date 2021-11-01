import 'package:bill_calculator/birthdaywishes/birtthdaypage.dart';
import 'package:flutter/material.dart';
import 'package:clipboard/clipboard.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:share/share.dart';

class BirthdayDetailPage extends StatelessWidget {
  String message;
  BirthdayDetailPage({this.message});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("detail message"),
          backgroundColor: appbarcolor,
        ),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Text(
                    message,
                    textAlign: TextAlign.justify,
                    style: style,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      FlutterClipboard.copy(message);
                      Fluttertoast.showToast(
                          msg: "sucessfully copied $message");
                    },
                    icon: Icon(Icons.copy),
                    iconSize: 40,
                  ),
                  IconButton(
                    onPressed: () {
                      Share.share(message);
                    },
                    icon: Icon(Icons.share),
                    iconSize: 40,
                  ),
                ],
              ),
            ],
          ),
        )));
  }
}
