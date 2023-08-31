// import 'package:flutter/material.dart';
// import 'package:weather/widgets/city_detail.dart';
// import 'package:weather/widgets/city_text_field.dart';
// import 'package:weather/widgets/extra_weather_details.dart';
// import 'package:weather/widgets/some_days_weather.dart';
// import 'package:weather/widgets/weather_detail.dart';

// class Body extends StatefulWidget {
//   const Body({super.key});

//   @override
//   State<Body> createState() => _BodyState();
// }

// class _BodyState extends State<Body> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//     mainAxisAlignment: MainAxisAlignment.start,
//     mainAxisSize: MainAxisSize.min,
//     children: [
//       Padding(
//         padding: EdgeInsets.all(20),
//         child: CityTextField(),
//       ),
//       CityDetail(),
//       SizedBox(
//         height: 60,
//       ),
//       WeatherDetail(),
//       SizedBox(
//         height: 40,
//       ),
//       ExtraWeatherDetails(),
//       SizedBox(
//         height: 90,
//       ),
//       Container(
//         child: Center(
//           child: Text(
//             'WEATHER FOR 3 DAYS',
//             style: TextStyle(
//                 color: Colors.white, fontSize: 30, fontWeight: FontWeight.w200),
//           ),
//         ),
//       ),
//       Expanded(child: SomeDaysWeather()),
//       SizedBox(height: 65,),
//     ],
//   );
//   }
// }





