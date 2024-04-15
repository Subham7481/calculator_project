import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile_screen extends StatefulWidget {
  const Profile_screen({super.key});
  @override
  State<StatefulWidget> createState() => _Profile_screenState();
}

class _Profile_screenState extends State<Profile_screen> {
  var result = "";
  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
      color: Colors.white,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(21.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  keyboardType: TextInputType.number,
                  controller: no1Controller,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: no2Controller,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          var num1 = int.parse(no1Controller.text.toString());
                          var num2 = int.parse(no2Controller.text.toString());
                          var sum = num1 + num2;
                          result = "Sum of $num1 and $num2 is : $sum";
                          setState(() {});
                        },
                        child: Text("Add")),
                    ElevatedButton(
                        onPressed: () {
                          var num1 = int.parse(no1Controller.text.toString());
                          var num2 = int.parse(no2Controller.text.toString());
                          var subs = num1 - num2;
                          result = "Diff of $num1 and $num2 is : $subs";
                          setState(() {});
                        },
                        child: Text("Subs")),
                    ElevatedButton(
                        onPressed: () {
                          var num1 = int.parse(no1Controller.text.toString());
                          var num2 = int.parse(no2Controller.text.toString());
                          var multi = num1 * num2;
                          result = "Product of $num1 and $num2 is : $multi";
                          setState(() {});
                        },
                        child: Text("Multi")),
                    ElevatedButton(
                        onPressed: () {
                          var num1 = int.parse(no1Controller.text.toString());
                          var num2 = int.parse(no2Controller.text.toString());
                          var div = num1 / num2;
                          result = "Division of $num1 and $num2 is : $div";
                          setState(() {});
                        },
                        child: Text("Divi")),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(21.0),
                  child: Text(
                    result,
                    style: TextStyle(fontSize: 25, color: Colors.lightBlue),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    )));
  }
}
