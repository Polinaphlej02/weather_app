import 'package:flutter/material.dart';

class CityTextField extends StatelessWidget {
  const CityTextField({super.key});

  @override
  Widget build(BuildContext context) {
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
}