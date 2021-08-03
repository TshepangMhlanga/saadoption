import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:saadoptionsystem/Main/bloc.navigation_bloc/navigation_bloc.dart';
import 'package:flutter/material.dart';
import 'package:saadoptionsystem/Main/pages/AdoptAChild/Assesments/quiz_screen.dart';
import 'package:saadoptionsystem/Splash/background.dart';
import '../../../../rounded_button.dart';

class AptitudeTestBody extends StatelessWidget with NavigationStates {
  TextEditingController question1 = new TextEditingController();
  TextEditingController question2 = new TextEditingController();
  TextEditingController question3 = new TextEditingController();
  TextEditingController question4 = new TextEditingController();
  TextEditingController question5 = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Container(
        padding: EdgeInsets.all(40.0),
        child: Center(
            child: Column(
          children: [
            Text(
              "Home Aspect",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              " Answer the following questions",
            ),
            TextField(
              decoration:
                  InputDecoration(hintText: "Where is the house situated?*"),
              controller: question1,
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText:
                      "Stipulate a brief descriotion of home and it's composition?*"),
              controller: question2,
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              controller: question3,
              decoration: InputDecoration(
                hintText: "It's fine to keep adoption status\n" + " a secret?*",
                hintMaxLines: 2,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              controller: question4,
              decoration: InputDecoration(
                hintText: "Briefly describe the neibourhood and amenties?*",
                hintMaxLines: 2,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              controller: question5,
              decoration: InputDecoration(
                hintText: "How many rooms are there\n" + "is to give birth?*",
                hintMaxLines: 2,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            RoundedButton(
              text: "UPLOAD DOCUMENTS", press: () {  },
            ),
            RoundedButton(
              text: "SUBMIT",
              press: () {
                Map<String, dynamic> data = {
                  "Where is the house situated?": question1.text,
                  "Stipulate a brief descriotion of home and it's composition?":
                      question2.text,
                  "It's fine to keep adoption status\n" + " a secret?":
                      question3.text,
                  "Briefly describe the neibourhood and amenties?":
                      question4.text,
                  "How many rooms are there\n" + "is to give birth?":
                      question5.text
                };
                FirebaseFirestore.instance.collection("HomeAspects").add(data);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return QuizScreenBody();
                    },
                  ),
                );
              },
            ),
          ],
        )),
      ),
    );
  }
}
