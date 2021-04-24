import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/contactus.dart';
import 'true_false_quiz.dart';
import 'multiplechoice.dart';
import 'my_flutter_app_icons.dart';
import 'constants.dart';
import 'bouncinbutton.dart';
class selecttype extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,
      theme: ThemeData(

      ),
      home: Scaffold( backgroundColor: Colors.purpleAccent,
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text("Pick Quiz type"),
          actions: [IconButton(icon: Icon(MyFlutterApp.home), onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>selecttype()));

          })],
        ),
        drawer: Theme(
          data: Theme.of(context).copyWith( //This will change the drawer background to blue.
            canvasColor: Colors.purpleAccent,
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

                  ListTile(
                    title: Container(

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

                  ListTile(
                    title: Container(

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
                  ListTile(
                    title: Container(


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
                  SizedBox(
                    width: 2.0,
                    height: 2.0,
                    child: const DecoratedBox(
                      decoration: const BoxDecoration(
                        gradient: kPrimaryGradient,
                      ),
                    ),
                  ),

                ],
              )
          ),
        ),
        body: Center(


          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Container(


                child: Text(
                  "Let's Play the Quiz,",
                  style: Theme.of(context).textTheme.headline4.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),

              Container(
                margin: EdgeInsets.all(80),
                child: TextButton(

                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(kDefaultPadding * 0.75), // 15
                    decoration: BoxDecoration(
                      gradient: kPrimaryGradient,
                    ),
                    child: Text(
                      "True or False ",
                      style: Theme.of(context)
                          .textTheme
                          .button
                          .copyWith(color: Colors.black),
                    ),
                  ),
                    onPressed:(){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>getjson2("True or False")));
                    }
                ),
              ),
              Container(
                margin: EdgeInsets.all(80),
                child: TextButton(
                  child: Container( width: double.infinity,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(kDefaultPadding * 0.75), // 15
                    decoration: BoxDecoration(
                      gradient: kPrimaryGradient,

                    ),
                    child: Text("M C Qs",
                      style: Theme.of(context)
                          .textTheme
                          .button
                          .copyWith(color: Colors.black),),
                    ),
                    onPressed:(){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>multiplechoice()));
                    }
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
