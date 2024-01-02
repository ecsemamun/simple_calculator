import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  var number1 = 0, number2 = 0, sum = 0;
  final TextEditingController text1 = new TextEditingController(text: "0");
  final TextEditingController text2 = new TextEditingController(text: "0");

  void doMultiplication() {
    setState(() {
      number1 = int.parse(text1.text);
      number2 = int.parse(text2.text);
      sum = number1 * number2;
    });
  }

  void doDivided() {
    setState(() {
      number1 = int.parse(text1.text);
      number2 = int.parse(text2.text);
      sum = number1 ~/ number2;
    });
  }

  void doSum() {
    setState(() {
      number1 = int.parse(text1.text);
      number2 = int.parse(text2.text);
      sum = number1 + number2;
    });
  }

  void doMinus() {
    setState(() {
      number1 = int.parse(text1.text);
      number2 = int.parse(text2.text);
      sum = number1 - number2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Simple Calculator App"),
        backgroundColor: Colors.yellow,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextFormField(
              controller: text1,
              keyboardType: TextInputType.number,
              cursorColor: Colors.amber,
              decoration: InputDecoration(
                  hintText: "Enter First Number",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0))),
            ),
            TextFormField(
              controller: text2,
              keyboardType: TextInputType.number,
              cursorColor: Colors.amber,
              decoration: InputDecoration(
                  hintText: "Enter Second Number",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0))),
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            Row(
              children: [
                ElevatedButton(
                    onPressed: () {
                      doMultiplication();
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.amber,
                        textStyle: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold)),
                    child: Text("*")),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      doDivided();
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.amber,
                        textStyle: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold)),
                    child: Text("/")),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      doSum();
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.amber,
                        textStyle: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold)),
                    child: Text("+")),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      doMinus();
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.amber,
                        textStyle: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold)),
                    child: Text("-")),
              ],
            ),
            Text(
              "Output: $sum",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.green),
            ),
          ],
        ),
      ),
    ));
  }
}
