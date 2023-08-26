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
      _cityDetail(),
      SizedBox(height: 30,),
      Padding(padding: EdgeInsets.only(left: 70, right: 70),child: _weatherDetail(),),
      SizedBox(height: 30,),
      _extraWeatherDetails(),
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
    children: const [
      Text("Minsk", style: TextStyle(
        fontSize: 40, 
        color: Colors.white,
      ),),
      Text("Saturday, August, 2023", style: TextStyle(
        fontSize: 20,
        color: Colors.white,
      ),),
    ],
  );
}

Row _weatherDetail() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      const Icon(Icons.sunny, size: 120, color: Colors.white,),
      Column( children: const [
        Text("25 ℃", style: TextStyle(fontSize: 60, color: Colors.white),),
        Text('Sunny', style: TextStyle(fontSize: 35, color: Colors.white),)
      ],)
    ],
  );
}

Row _extraWeatherDetails() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
    Column(
      children: [
        Image.asset("assets/icons/wind.png", color: Colors.white, width: 25,),
        Text("5", style: TextStyle(color: Colors.white, fontSize: 25),),
        Text("km/hr", style: TextStyle(color: Colors.white, fontSize: 25),)
    ],),
    Column(
      children: [
        Image.asset("assets/icons/wind.png", color: Colors.white, width: 25,),
        Text("5", style: TextStyle(color: Colors.white, fontSize: 25),),
        Text("km/hr", style: TextStyle(color: Colors.white, fontSize: 25),)
    ],),
    Column(
      children: [
        Image.asset("assets/icons/wind.png", color: Colors.white, width: 25,),
        Text("5", style: TextStyle(color: Colors.white, fontSize: 25),),
        Text("km/hr", style: TextStyle(color: Colors.white, fontSize: 25),)
    ],)
  ],);
}
