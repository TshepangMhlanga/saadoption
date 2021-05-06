import 'package:saadoptionsystem/Main/bloc.navigation_bloc/navigation_bloc.dart';
import 'package:flutter/material.dart';
import 'package:saadoptionsystem/Main/pages/AdoptAChild/Assesments/PsychometricTestBody.dart';
import 'package:saadoptionsystem/Splash/background.dart';
import '../../../../rounded_button.dart';
import 'PsychometricTest.dart';

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
            TextField(
              decoration: InputDecoration(hintText: "Question 1"),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              decoration: InputDecoration(hintText: "Question 2"),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              decoration: InputDecoration(hintText: "Question 3"),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              decoration: InputDecoration(hintText: "Question 5"),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              decoration: InputDecoration(hintText: "Question 6"),
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
                    return PsychometricTest();
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
