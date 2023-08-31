import 'package:flutter/material.dart';
import 'package:weather/models/weather.dart';
import 'package:weather/utilities/forecast_utilities.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ExtraWeatherDetails extends StatelessWidget {
  final AsyncSnapshot<WeatherForecast> snapshot;
  const ExtraWeatherDetails({Key? key, required this.snapshot}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    var forecastList = snapshot.data?.list;
    var pressure = forecastList![0].pressure * 0.750062;
    var humidity = forecastList[0].humidity;
    var speed = forecastList[0].speed;
    return Container(child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    mainAxisSize: MainAxisSize.max,
    children: [
      Util.getItem(FontAwesomeIcons.temperatureThreeQuarters, pressure.round(), "mm Hg"),
      Util.getItem(FontAwesomeIcons.cloudRain, humidity, "%"),
      Util.getItem(FontAwesomeIcons.wind, speed.toInt(), "m/s"),
    ],
  ));
}
}