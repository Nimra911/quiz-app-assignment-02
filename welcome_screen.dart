import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/screens/quiz/quiz_screen.dart';
import 'package:websafe_svg/websafe_svg.dart';
import 'package:quiz_app/true_false_quiz.dart';
import 'package:quiz_app/multiplechoice.dart';
import 'package:quiz_app/contactus.dart';
import 'package:quiz_app/bouncinbutton.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      drawer: Theme(
        data: Theme.of(context).copyWith( //This will change the drawer background to blue.
          canvasColor: Colors.cyan,
        ),
        child: Drawer(
            child: ListView(
              children: [
                UserAccountsDrawerHeader(
                  accountName: Text("Nimra Rehman"),
                  accountEmail: Text("nimrarehmanvehari@gmail.com"),
                  decoration: BoxDecoration(
                    gradient: new LinearGradient(
                        colors: [
                          Colors.cyan,
                          Colors.cyan.shade300,
                        ],

                        stops: [0.0, 1.0],
                      ),
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Theme.of(context).platform == TargetPlatform.iOS
                        ? const Color(0xFF00897b)
                        : Colors.white,
                    child: Text(
                      "N",
                      style: TextStyle(fontSize: 40.0),
                    ),
                  ),
                ),
                Divider(
                  height: 2,
                  thickness: 2,
                ),
                ListTile(
                  title: Container(
                    padding: EdgeInsets.all(kDefaultPadding * 0.80), // 15
                    decoration: BoxDecoration(
                      gradient: kPrimaryGradient,

                    ),
                    child: Text('True or False',style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: Colors.white, fontSize: 20.0),

                    ),
                  ),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>getjson2("True or False")),
                    );

                  },
                ),
                Divider(
                  height: 2,
                  thickness: 2,
                ),
                ListTile(
                  title: Container(
                    padding: EdgeInsets.all(kDefaultPadding * 0.80), // 15
                    decoration: BoxDecoration(
                      gradient: kPrimaryGradient,

                    ),
                    child: Text('M C Qs',style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: Colors.white, fontSize: 20.0),

                    ),
                  ),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => multiplechoice()),
                    );

                  },
                ),
                Divider(
                  height: 2,
                  thickness: 2,
                ),
                ListTile(
                  title: Container(
                    padding: EdgeInsets.all(kDefaultPadding * 0.80), // 15
                    decoration: BoxDecoration(
                      gradient: kPrimaryGradient,

                    ),
                    child: Text('Contact Us',style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: Colors.white, fontSize: 20.0),

                    ),
                  ),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => contactus()),
                    );

                  },
                ),
                Divider(
                  height: 2,
                  thickness: 2,
                ),
                ListTile(
                  title: Container(
                    padding: EdgeInsets.all(kDefaultPadding * 0.80), // 15
                    decoration: BoxDecoration(
                      gradient: kPrimaryGradient,

                    ),
                    child: Text('Animation Button',style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: Colors.white, fontSize: 20.0),

                    ),
                  ),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BouncingButton()),
                    );

                  },
                ),
                Divider(
                  height: 2,
                  thickness: 2,
                ),


              ],
            )
        ),
      ),
      body: Stack(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(flex: 2),
                   Text(
                    "Let's Play Quiz,",
                    style: Theme.of(context).textTheme.headline4.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Spacer(), // 1/6
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFF1C2341),
                      hintText: "Enter your Full Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(0)),
                      ),
                    ),
                  ),
                  Spacer(), // 1/6
                  InkWell(
                    onTap: () => Get.to(QuizScreen()),
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(kDefaultPadding * 0.75), // 15
                      decoration: BoxDecoration(
                        gradient: kPrimaryGradient,
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      child: Text(
                        "Lets Play the Quiz",
                        style: Theme.of(context)
                            .textTheme
                            .button
                            .copyWith(color: Colors.black),
                      ),
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
