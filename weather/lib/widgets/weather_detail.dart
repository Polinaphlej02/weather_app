import 'package:flutter/material.dart';
import 'package:weather/models/weather.dart';

class WeatherDetail extends StatelessWidget {
  final AsyncSnapshot<WeatherForecast> snapshot;
  const WeatherDetail({Key? key, required this.snapshot}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    var forecastList = snapshot.data?.list;
    var icon = forecastList?[0].getIconUrl();
    var temp = forecastList?[0].temp.day.toStringAsFixed(0);
    var weatherDescription= forecastList?[0].weather[0].description.toUpperCase();

    return  Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
        Image.network(icon!, color: const Color.fromARGB(179, 161, 14, 14), scale: 0.5,),
        SizedBox(
          child: Column(
        children: [
          Text(
            "${temp} ℃",
            style: TextStyle(fontSize: 60, color: Colors.white),
          ),
          Text(
            '${weatherDescription}',
            style: TextStyle(fontSize: 25, color: Colors.white),
          )
        ],
      ))
    ],
  );
  }
}