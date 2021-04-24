import 'package:contactus/contactus.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';
import 'true_false_quiz.dart';
import 'multiplechoice.dart';
import 'my_flutter_app_icons.dart';
import 'selected_type.dart';
import 'constants.dart';


class contactus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text("Contact Us"),
          actions: [IconButton(icon: Icon(MyFlutterApp.home), onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>selecttype()));

          })],
        ),
        drawer: Theme(
          data: Theme.of(context).copyWith( //This will change the drawer background to blue.
            canvasColor: Colors.cyanAccent,
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

                  ListTile(
                    title: Container(
                      padding: EdgeInsets.all(kDefaultPadding * 0.80), // 15
                      decoration: BoxDecoration(
                        gradient: kPrimaryGradient,

                      ),
                      child: Text('M C Qs',style: Theme.of(context)
                          .textTheme
                          .button
                          .copyWith(color: Colors.black, fontSize: 20.0),

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

        body: Container(
          decoration: BoxDecoration(
            gradient: kPrimaryGradient,
          ),
          child: ContactUs(

            email: 'nimrarehmanvehari@gmail.com',

            phoneNumber: '********',
            githubUserName: 'Nimra911',

          ),
        ),
        bottomNavigationBar: ContactUsBottomAppBar(


          textColor: Colors.black,
          backgroundColor: Colors.teal.shade300,
          email: 'nimrarehmanvehari@gmail.com',
        ),
      ),
    );
  }
}
