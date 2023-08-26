import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Color.fromARGB(255, 255, 99, 88),
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 202, 62, 52),
          title: const Text("Weather", 
          style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Chalkduster Rus', fontSize: 25),),
          centerTitle: true,
          ),
          // body: _bodyBuilding(),),
    );
  }
}

