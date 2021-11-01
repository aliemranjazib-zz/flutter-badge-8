import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AssignmentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              height: double.infinity,
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.brown,
                      child: Center(
                          child: Text(
                        "HI",
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      color: Colors.red,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Container(
                              width: 60,
                              height: 60,
                              color: Colors.amber,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 30,
                              top: 30,
                            ),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                "HI",
                                style: TextStyle(
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.deepPurple,
                      child: Center(
                          child: Container(
                        width: 60,
                        height: 60,
                        color: Colors.amber,
                      )),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: Container(
            height: double.infinity,
            color: Colors.blue,
            child: Center(
              child: RotatedBox(
                quarterTurns: 1,
                child: Text(
                  "WELCOME BRO",
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          )),
        ],
      ),
    );
  }
}
