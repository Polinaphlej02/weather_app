import 'package:flutter/material.dart';

class SomeDaysWeather extends StatelessWidget {
  const SomeDaysWeather({super.key});

  @override
  Widget build(BuildContext context) {
    final List items = List.generate(3, (index) => ["Saturday", "15", "C"]);


    return ListView.builder(
    scrollDirection: Axis.horizontal,
    itemExtent: 180,
    itemCount: items.length,
    itemBuilder: (context, index){
      return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(5),
          child: ListTile(
          tileColor: Color.fromARGB(255, 139, 28, 20).withOpacity(0.3),
        title: Text(
          "${items[index][0]}",
         style: TextStyle(color: Colors.white, fontSize: 30),
      ),
       subtitle: RichText(
        text: TextSpan(
        text: "${items[index][1]} ${items[index][2]}",
        style: TextStyle(color: Colors.white, fontSize: 30),
        children: [
            WidgetSpan(child: Icon(Icons.sunny, color: Colors.white, size: 35,),)
          ]),
        ))
      );
    }
  );
  }
}