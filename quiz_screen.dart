import 'package:flutter/material.dart';


class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        // Fluttter show the back button automatically
        backgroundColor: Colors.greenAccent,
        elevation: 0,
        actions: [
          FlatButton( child: Text("Skip")),
        ],
      ),
    );
  }
}
