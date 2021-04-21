import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/screens/quiz/quiz_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Stack(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 200.0,
                    height: 80.0,
                  ),

                  Text(
                    "Let's Play Quiz",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline2.copyWith(
                        color: Color(0xFF1C2341),fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 200.0,
                    height: 10.0,
                  ),
                  Text("Enter your information below",
                  style: TextStyle(
                    color: Colors.purple),
                  ),
                  SizedBox(
                    width: 200.0,
                    height: 40.0,

                  ),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.blue,
                      labelText: 'Full Name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 200.0,
                    height: 40.0,
                  ),
                  InkWell(

                      child: Text(
                        "Lets Start Quiz",
                        style: Theme.of(context)
                            .textTheme
                            .button
                            .copyWith(color: Colors.purple,fontSize: 20),
                      ),

                  ),
                  Spacer(flex: 2), // it will take 2/6 spaces
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
