import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double totalbill = 0;
  int totalperson = 1;
  double tippercentage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Text(
                "TIP AND BILL CALCULATOR",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.deepPurple.withOpacity(0.5),
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "TOTAL BILL PER PERSON",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "${((((totalbill / 100 * tippercentage)) + totalbill) ~/ totalperson)} RS",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  width: double.infinity,
                  height: 300,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        TextField(
                          // onSubmitted: (String value) {
                          //   setState(() {
                          //     totalbill = value;
                          //   });
                          // },
                          onChanged: (String value) {
                            setState(() {
                              if (totalbill != null)
                                totalbill = double.parse(value);
                            });
                          },
                          decoration: InputDecoration(
                            labelText: "please enter bill amount",
                            border: OutlineInputBorder(),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "split by",
                              style: TextStyle(fontSize: 20),
                            ),
                            TextButton(
                                onPressed: () {
                                  setState(() {
                                    if (totalperson > 1) {
                                      totalperson--;
                                    }
                                  });
                                },
                                child: Icon(Icons.remove)),
                            Text(
                              "$totalperson",
                              style: TextStyle(fontSize: 20),
                            ),
                            TextButton(
                                onPressed: () {
                                  setState(() {
                                    totalperson++;
                                  });
                                },
                                child: Icon(Icons.add))
                          ],
                        ),
                        Text(
                          "Tip Percentage ${tippercentage.round()} %",
                          style: TextStyle(fontSize: 20),
                        ),
                        Slider(
                          divisions: 20,
                          value: tippercentage,
                          onChanged: (v) {
                            setState(() {
                              tippercentage = v;
                            });
                          },
                          min: 0,
                          max: 100,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
