import 'package:saadoptionsystem/Main/bloc.navigation_bloc/navigation_bloc.dart';
import 'package:flutter/material.dart';
import 'package:saadoptionsystem/Splash/background.dart';
import '../../../../rounded_button.dart';
import '../PossibleMatch.dart';

class AptitudeTestBody extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Background(
      child: Container(
        padding: EdgeInsets.all(40.0),
        child: Center(
            child: Column(
          children: [
            Text(
              "APTITUDE TEST",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              "Please answer the following with Agree,Disagree or Strongly Agree",
            ),
            TextField(
              decoration:
                  InputDecoration(hintText: "Love is a biolgical function?*"),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "I will always regret not reproducing?*",
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "It's fine to keep adoption status\n" + " a secret?*",
                hintMaxLines: 2,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              decoration: InputDecoration(
                hintText:
                    "Biological heritage is foundational\n" + " to a family?*",
                hintMaxLines: 2,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "A womens most important role in life\n" +
                    "is to give birth?*",
                hintMaxLines: 2,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            RoundedButton(
              text: "UPLOAD DOCUMENTS",
            ),
            RoundedButton(
              text: "SUBMIT ANSWERS",
              press: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return PossibleMatch();
                  },
                ));
              },
            ),
          ],
        )),
      ),
    );
  }
}
