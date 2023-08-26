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
          title: const Text(
            "Weather",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Chalkduster Rus',
                fontSize: 25),
          ),
          centerTitle: true,
        ),
        body: _bodyBuilding(),
      ),
    );
  }
}

Column _bodyBuilding() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      Padding(
        padding: EdgeInsets.all(20),
        child: _textFieldWidget(),
      ),
    ],
  );
}

TextField _textFieldWidget() {
  return const TextField(
    style: TextStyle(fontSize: 20, color: Colors.white, height: 0.5),
    cursorColor: Color.fromARGB(255, 139, 28, 20),
    decoration: InputDecoration(
      border: InputBorder.none,
      icon: Icon(Icons.search, size: 35,),
      iconColor: Colors.white,
      hintText: "Enter city name",
      hintStyle: const TextStyle(fontSize: 20, color: Colors.white60),
    ),
  );
}

Column _cityDetail() {
  return Column(
    children: [
      Text("Minsk"),
      Text("Saturday, August, 2023"),
    ],
  );
}
