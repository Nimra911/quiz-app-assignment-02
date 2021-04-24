import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'selected_type.dart';
import 'my_flutter_app_icons.dart';
import 'true_false_quiz.dart';
import 'contactus.dart';
import 'constants.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:quiz_app/screens/welcome/welcome_screen.dart';
import 'bouncinbutton.dart';



class multiplechoice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
        home: Scaffold(
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
    backgroundColor: Colors.grey.shade900,
          body: WelcomeScreen(),
    ),
    );
  }
}

