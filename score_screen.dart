import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/constants.dart';
import 'package:websafe_svg/websafe_svg.dart';
import 'package:quiz_app/my_flutter_app_icons.dart';
import 'package:quiz_app/selected_type.dart';
import 'package:quiz_app/true_false_quiz.dart';
import 'package:quiz_app/multiplechoice.dart';
import 'package:quiz_app/contactus.dart';
import 'package:quiz_app/controllers/question_controller.dart';
import 'package:quiz_app/bouncinbutton.dart';


class ScoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    QuestionController _con = QuestionController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("M C Qs"),
        actions: [IconButton(icon: Icon(MyFlutterApp.home), onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: (context)=>selecttype()));

        })],
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith( //This will change the drawer background to blue.
          canvasColor: Colors.transparent,
        ),
        child: Drawer(
            child:ListView(
        children: [
        UserAccountsDrawerHeader(
        accountName: Text("Nimra Rehman"),
        accountEmail: Text("nimrarehmanvehari@gmail.com"),
        decoration: BoxDecoration(
          gradient: new LinearGradient(
            colors: [
              Colors.blueAccent,
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
                    child: Text('True or False Quiz',style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: Colors.white, fontSize: 20.0),

                    ),
                  ),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => getjson2("True or False")),
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
                    child: Text('M C Q',style: Theme.of(context)
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
        fit: StackFit.expand,
        children: [

          Column(
            children: [
              Spacer(flex: 3),
              Text(
                " Your Scores are ",
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    .copyWith(color: kSecondaryColor),
              ),
              Spacer(),
              Text(
                "${_qnController.numOfCorrectAns * 10}/${_qnController.questions.length * 10}",
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(color: kSecondaryColor),


              ),
              Spacer(flex: 3),

            ],
          )
        ],
      ),
    );
  }
}
