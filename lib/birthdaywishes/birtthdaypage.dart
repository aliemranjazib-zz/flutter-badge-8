import 'package:bill_calculator/birthdaywishes/birthdaydetail.dart';
import 'package:flutter/material.dart';

var style = TextStyle(fontSize: 25);
Color appbarcolor = Colors.deepPurple;

class BirthdayPage extends StatelessWidget {
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
        elevation: 0.0,
        backgroundColor: appbarcolor,
        title: Text("BIRTHDAY WISHES"),
        centerTitle: true,
      ),
      body: ListView(
          scrollDirection: Axis.vertical,
          children: wishes
              .map(
                (e) => InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return BirthdayDetailPage(
                        message: e,
                      );
                    }));
                    print(e);
                  },
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(e.toString(), style: style),
                    ),
                  ),
                ),
              )
              .toList()),
    );
  }
}
