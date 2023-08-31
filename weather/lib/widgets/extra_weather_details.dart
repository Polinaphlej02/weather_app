import 'package:flutter/material.dart';
import 'package:weather/models/weather.dart';

class ExtraWeatherDetails extends StatelessWidget {
  final AsyncSnapshot<WeatherForecast> snapshot;
  const ExtraWeatherDetails({Key? key, required this.snapshot}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
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
}