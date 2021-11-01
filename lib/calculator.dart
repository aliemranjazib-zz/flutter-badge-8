import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  String result = "0";
  String output = "0";
  int num1 = 0;
  int num2 = 0;
  String operand = "";
  calculations(String title) {
    if (title == "CLEAR") {
      result = "0";
      num1 = 0;
      num2 = 0;
      operand = "";
    } else if (title == "/" || title == "X" || title == "+" || title == "-") {
      num1 = int.parse(output);
      operand = title;

      result = "0";
    } else if (title == "=") {
      num2 = int.parse(output);
      if (operand == "/") {
        result = (num1 / num2).toString();
      }
      if (operand == "X") {
        result = (num1 * num2).toString();
      }
      if (operand == "+") {
        result = (num1 + num2).toString();
      }
      if (operand == "-") {
        result = (num1 - num2).toString();
      }
    } else {
      setState(() {
        result = result + title;
      });
    }
    setState(() {
      output = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(28.0),
                child: Text("$result",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Divider(
              height: 2,
              thickness: 2,
              color: Colors.grey,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        box("CLEAR", Colors.grey.shade800, BoxShape.rectangle),
                        box("=", Colors.amber.shade800, BoxShape.rectangle),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        box("7", Colors.grey.shade800, BoxShape.circle),
                        box("8", Colors.grey.shade800, BoxShape.circle),
                        box("9", Colors.grey.shade800, BoxShape.circle),
                        box("X", Colors.amber.shade800, BoxShape.circle),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        box("4", Colors.grey.shade800, BoxShape.circle),
                        box("5", Colors.grey.shade800, BoxShape.circle),
                        box("6", Colors.grey.shade800, BoxShape.circle),
                        box("-", Colors.amber.shade800, BoxShape.circle),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        box("1", Colors.grey.shade800, BoxShape.circle),
                        box("2", Colors.grey.shade800, BoxShape.circle),
                        box("3", Colors.grey.shade800, BoxShape.circle),
                        box("/", Colors.amber.shade800, BoxShape.circle),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        box("0", Colors.grey.shade800, BoxShape.circle),
                        box("00", Colors.grey.shade800, BoxShape.circle),
                        box(".", Colors.grey.shade800, BoxShape.circle),
                        box("+", Colors.amber.shade800, BoxShape.circle),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  box(String titleText, Color c, BoxShape s) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: InkWell(
          onTap: () {
            calculations(titleText);
          },
          child: Container(
            decoration: BoxDecoration(color: c, shape: s),
            child: Center(
              child: Text(titleText,
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
