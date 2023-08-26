
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
      SizedBox(
        height: 30,
      ),
      _weatherDetail(),
      SizedBox(
        height: 30,
      ),
      _extraWeatherDetails(),
      SizedBox(
        height: 45,
      ),
      Container(
        child: Center(
          child: Text(
            'WEATHER FOR 3 DAYS',
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.w200),
          ),
        ),
      ),
      Expanded(child: _someDaysWeather()),
    ],
  );
}

TextField _textFieldWidget() {
  return const TextField(
    style: TextStyle(fontSize: 20, color: Colors.white, height: 0.5),
    cursorColor: Color.fromARGB(255, 139, 28, 20),
    decoration: InputDecoration(
      border: InputBorder.none,
      icon: Icon(
        Icons.search,
        size: 35,
      ),
      iconColor: Colors.white,
      hintText: "Enter city name",
      hintStyle: const TextStyle(fontSize: 20, color: Colors.white60),
    ),
  );
}

Column _cityDetail() {
  return Column(
    children: const [
      Text(
        "Minsk",
        style: TextStyle(
          fontSize: 40,
          color: Colors.white,
        ),
      ),
      Text(
        "Saturday, August, 2023",
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
      ),
    ],
  );
}

Row _weatherDetail() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Icon(
        Icons.sunny,
        size: 120,
        color: Colors.white,
      ),
        SizedBox(
          child: Column(
        children: const [
          Text(
            "25 ℃",
            style: TextStyle(fontSize: 60, color: Colors.white),
          ),
          Text(
            'Sunny',
            style: TextStyle(fontSize: 35, color: Colors.white),
          )
        ],
      ))
    ],
  );
}

Row _extraWeatherDetails() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Column(
        children: [
          Image.asset(
            "assets/icons/wind.png",
            color: Colors.white,
            width: 25,
          ),
          Text(
            "5",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          Text(
            "km/hr",
            style: TextStyle(color: Colors.white, fontSize: 25),
          )
        ],
      ),
      Column(
        children: [
          Icon(
            Icons.water_drop,
            color: Colors.white,
            size: 25,
          ),
          Text(
            "3",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          Text(
            "%",
            style: TextStyle(color: Colors.white, fontSize: 25),
          )
        ],
      ),
      Column(
        children: [
          Image.asset(
            "assets/icons/wind.png",
            color: Colors.white,
            width: 25,
          ),
          Text(
            "5",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          Text(
            "km/hr",
            style: TextStyle(color: Colors.white, fontSize: 25),
          )
        ],
      )
    ],
  );
}

Widget _someDaysWeather() {
  final List items = List.generate(3, (index) => ["Saturday", '15', "℃"]);

  return ListView.builder(
    scrollDirection: Axis.horizontal,
    itemExtent: 180,
    itemCount: items.length,
    itemBuilder: (context, index){
      return Card(
        child: ListTile(
          tileColor: Color.fromARGB(255, 221, 216, 216),
        title: Text(
          "$items[0]",
         style: TextStyle(color: Colors.white, fontSize: 30),
      ),
       subtitle: RichText(
        text: TextSpan(
        text: "${items[1]} ${items[2]}",
        style: TextStyle(color: Colors.white, fontSize: 30),
        children: [
            WidgetSpan(child: Icon(Icons.sunny, color: Colors.white, size: 35,),)
          ]),
        ))
      );
    }
  );
}
