import 'package:flutter/material.dart';
import 'package:weather/api/weather_api.dart';
import 'package:weather/models/weather.dart';
// import 'package:weather/widgets/body.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:weather/widgets/city_detail.dart';
import 'package:weather/widgets/city_text_field.dart';
import 'package:weather/widgets/extra_weather_details.dart';
import 'package:weather/widgets/some_days_weather.dart';
import 'package:weather/widgets/weather_detail.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  late Future<WeatherForecast> forecastObj;
  String _cityName = "New York";

  @override
  void initState() {
    forecastObj = WeatherAPI().getWeatherWithCity(city: _cityName);
    forecastObj.then((value) {
      print(value.list?[0].temp.day);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 53, 51, 51),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 86, 19, 14),
        title: const Text(
          "Weather",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.my_location),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.location_city))
        ],
      ),
      body: Container(
        child: FutureBuilder<WeatherForecast>(
            future: forecastObj,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: CityTextField(),
                    ),
                    CityDetail(snapshot: snapshot,),
                    SizedBox(
                      height: 60,
                    ),
                    WeatherDetail(snapshot: snapshot,),
                    SizedBox(
                      height: 40,
                    ),
                    ExtraWeatherDetails(snapshot: snapshot,),
                    SizedBox(
                      height: 90,
                    ),
                    Container(
                      child: Center(
                        child: Text(
                          'WEATHER FOR 3 DAYS',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w200),
                        ),
                      ),
                    ),
                    Expanded(child: SomeDaysWeather()),
                    SizedBox(
                      height: 65,
                    ),
                  ],
                );
              } else {
                return Center(
                  child: SpinKitSpinningLines(
                    color: Color.fromARGB(255, 86, 19, 14),
                    size: 100,
                  ),
                );
              }
            }),
      ),
    ));
  }
}
