import 'package:bill_calculator/wishes/wisheshome.dart';
import 'package:flutter/material.dart';

class DetailWishesScreen extends StatelessWidget {
  String w;
  DetailWishesScreen({this.w});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("detail screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    w,
                    textAlign: TextAlign.justify,
                    style: mystyle,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.copy,
                        size: 50,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.share,
                        size: 50,
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
