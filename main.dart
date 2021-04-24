
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'selected_type.dart';



void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: "Quiz App",
  home: mysplashscreen(),
));

class mysplashscreen extends StatelessWidget{
  Widget build(BuildContext context){
    return new SplashScreen(seconds: 0,
      navigateAfterSeconds: new selecttype(),
      title: new Text("Nimra Rehman(Fa17-bcs-072)",
          style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0,color: Colors.lime,),
    ),
      loadingText: new Text("Page loading...", style: new TextStyle( fontSize: 30.0,color: Colors.white,),),

      backgroundColor: Colors.blueGrey,
      styleTextUnderTheLoader: new TextStyle(),
      loaderColor: Colors.greenAccent,
    );
  }
}


