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
              "Privacy Policy\n" +
                  "Updated at 2021-05-05 \n" +
                  "A Adoption System (“we,” “our,” or “us”) is committed to protecting your privacy.\n This Privacy Policy explains how your personal information is collected, used, and disclosed by SA Adoption System.This Privacy Policy applies to our website, and its associated subdomains (collectively, our “Service”) alongside our application, SA Adoption System. By accessing or using our Service, you signify that you have read, understood, and agree to our collection, storage, use, and disclosure of your personal information as described in this Privacy Policy and our Terms of Service.What Information Do We Collect?We collect information from you when you visit our app, register on our site, place an order, subscribe to our newsletter, respond to a survey or fill out a form.\n" +
                  "We also collect information from mobile devices for a better user experience, although these features are completely optional:",
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
