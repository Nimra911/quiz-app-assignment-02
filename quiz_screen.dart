import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/controllers/question_controller.dart';
import 'components/body.dart';
import 'package:quiz_app/my_flutter_app_icons.dart';
import 'package:quiz_app/selected_type.dart';
import 'package:quiz_app/true_false_quiz.dart';
import 'package:quiz_app/multiplechoice.dart';
import 'package:quiz_app/contactus.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/screens/score/score_screen.dart';
import 'package:quiz_app/bouncinbutton.dart';

class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    QuestionController _controller = Get.put(QuestionController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Select your answer"),
        actions: [
          IconButton(icon: Icon(MyFlutterApp.home), onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: (context)=>selecttype()));

        })
        ],

      ),
      drawer: Theme(
        data: Theme.of(context).copyWith( //This will change the drawer background to blue.
          canvasColor: Colors.blueGrey,
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
                  thickness: 3,

                ),
                ListTile(
                  title: Container(

                    child: Text('True or False',style: Theme.of(context)
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
                  thickness: 3,

                ),
                ListTile(
                  title: Container(

                    child: Text('M C Qs Quiz',style: Theme.of(context)
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
                  thickness: 3,

                ),
                ListTile(
                  title: Container(

                    child: Text('Contact Us',style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: Colors.black, fontSize: 20.0),

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
                  thickness: 3,

                ),
                ListTile(
                  title: Container(

                    child: Text('Animation Button',style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: Colors.black, fontSize: 20.0),

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
                  thickness: 3,

                ),
                ListTile(
                  title: Container(

                    child: Text('Leave',style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: Colors.black, fontSize: 20.0),

                    ),
                  ),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ScoreScreen()),
                    );

                  },
                ),
                Divider(
                  height: 2,
                  thickness: 3,

                ),


              ],
            )
        ),
      ),

      body: Body(),
    );
  }
}
