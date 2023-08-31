import 'package:flutter/material.dart';
import 'package:weather/models/weather.dart';
import 'package:weather/utilities/forecast_utilities.dart';

class CityDetail extends StatelessWidget {

  final AsyncSnapshot<WeatherForecast> snapshot;
   const CityDetail({Key? key, required this.snapshot}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var forecastList = snapshot.data?.list;
    var city = snapshot.data?.city.name;
    var formattedDate = DateTime.fromMillisecondsSinceEpoch(forecastList![0].dt * 1000);

    return  Column(
    children: [
      Text(
        '$city',
        style: TextStyle(
          fontSize: 40,
          color: Colors.white,
        ),
      ),
      Text(
        "${Util.getFormattedDate(formattedDate)}",
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
      ),
    ],
  );
  }
}