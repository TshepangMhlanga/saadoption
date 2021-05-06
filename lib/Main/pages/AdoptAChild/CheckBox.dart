import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:saadoptionsystem/Splash/background.dart';
import 'package:flutter/material.dart';
import 'package:saadoptionsystem/rounded_button.dart';

import 'AdoptersScreen.dart';

class CheckBox extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CheckBoxWidget();
  }
}

class CheckBoxWidget extends State<CheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "TERMS AND CONDITIONS",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              "The terms and conditons here",
            ),
            Text(
              "Accept Terms",
              style: TextStyle(color: Colors.green, fontSize: 20),
            ),
            Container(
              margin: EdgeInsets.only(top: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Checkbox(
                    value: isChecked,
                    onChanged: (bool b) {
                      setState(() {
                        isChecked = b;
                      });
                    },
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 4),
                    child:
                        Text("I have read and accept terms\n and conditions."),
                  ),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 32),
                child: RoundedButton(
                  text: "CONTINUE",
                  press: isChecked ? displayMessage : null,
                )),
          ],
        ),
      ),
    );
  }

  void displayMessage() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          AlertDialog dialog = AlertDialog(
            content: Text("You have accepted the terms."),
            actions: [
              FlatButton(
                child: Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return AdoptersScreen();
                    }),
                  );
                },
              ),
            ],
          );
          return dialog;
        });
  }
}
