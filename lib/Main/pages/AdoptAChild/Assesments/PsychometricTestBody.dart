import 'package:saadoptionsystem/Main/bloc.navigation_bloc/navigation_bloc.dart';
import 'package:flutter/material.dart';
import 'package:saadoptionsystem/Splash/background.dart';
import '../../../../rounded_button.dart';
import 'AptitudeTest.dart';

class PsychometricTestBody extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Background(
      child: Container(
        padding: EdgeInsets.all(40.0),
        child: Center(
            child: Column(
          children: [
            Text(
              "PSYCHOMETRIC TEST",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              "Please answer the following with Yes/No",
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Do you have patience to wait for your \n" +
                    "child to show you love?*",
                hintMaxLines: 2,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Do you have the social and community \n" +
                    "resources around you that will help you\n" +
                    "and them along the way?*",
                hintMaxLines: 3,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Are you ready to be 100% honest \n" +
                    "and transparent with the agency worker?",
                hintMaxLines: 2,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "Have you had a major life event \n" +
                      "in the past 12 months?",
                  hintMaxLines: 2),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Do you have the necessary investments\n" +
                    "child requires?*",
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
                    return AptitudeTest();
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
