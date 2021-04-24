import 'package:flutter/material.dart';
import 'package:quiz_app/contactus.dart';
import 'true_false_quiz.dart';
import 'multiplechoice.dart';
import 'my_flutter_app_icons.dart';
import 'constants.dart';
import 'selected_type.dart';
class BouncingButton extends StatefulWidget {
  @override
  _BouncingButtonState createState() => _BouncingButtonState();
}
class _BouncingButtonState extends State<BouncingButton> with SingleTickerProviderStateMixin {
  double _scale;
  AnimationController _controller;
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 500,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
      setState(() {});
    });
    super.initState();
  }
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    _scale = 1 - _controller.value;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Animation Button"),
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
                    child: Text('True or False ',style: Theme.of(context)
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Click the Button',style: TextStyle(color: Colors.blue,fontSize: 20.0),),
          SizedBox(
            height: 20.0,
          ),
          Center(
            child: GestureDetector(
              onTapDown: _tapDown,
              onTapUp: _tapUp,
              child: Transform.scale(
                scale: _scale,
                child: _animatedButton(),
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget  _animatedButton() {
    return Container(
      height: 70,
      width: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.0),
          boxShadow: [
            BoxShadow(
              color: Color(0x80000000),
              blurRadius: 12.0,
              offset: Offset(0.0, 5.0),
            ),
          ],
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.cyan,
              Colors.cyan.shade300,
            ],
          )),
      child: Center(
        child: Text(
          'Enter ',
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
      ),
    );
  }
  void _tapDown(TapDownDetails details) {
    _controller.forward();
  }
  void _tapUp(TapUpDetails details) {
    _controller.reverse();
  }
}