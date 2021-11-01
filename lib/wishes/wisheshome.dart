import 'package:bill_calculator/wishes/detailwishes.dart';
import 'package:flutter/material.dart';

var mystyle = TextStyle(fontSize: 25);

class WishesScreen extends StatelessWidget {
  List wishes = [
    "“Count your life by smiles, not tears. Count your age by friends, not years. Happy birthday!”",
    "Happy birthday! I hope all your birthday wishes and dreams come true.",
    "A wish for you on your birthday, whatever you ask may you receive, whatever you seek may you find, whatever you wish may it be fulfilled on your birthday and always. Happy birthday!",
    "Another adventure filled year awaits you. Welcome it by celebrating your birthday with pomp and splendor. Wishing you a very happy and fun-filled birthday!",
    "May the joy that you have spread in the past come back to you on this day. Wishing you a very happy birthday!",
    "Your birthday is the first day of another 365-day journey. Be the shining thread in the beautiful tapestry of the world to make this year the best ever. Enjoy the ride."
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.red,
        title: Text("BIRTHDAY WISHES", style: mystyle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
            children: wishes.map((wish) {
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailWishesScreen(w: wish);
              }));
            },
            child: Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Text(
                  "$wish",
                  style: mystyle,
                ),
              ),
            ),
          );
        }).toList()),
      ),
    );
  }
}
