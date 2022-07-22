import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:world_time/pages/output.dart';
import 'dart:convert';
import 'loading.dart';
import 'class_world_time.dart';
import 'output.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  List<Worldtime> locations =[
    Worldtime('Amsterdam', 'ned.png', "Europe/Amsterdam",0),
    Worldtime("Berlin", "ger.png", "Europe/Berlin",1),
    Worldtime("Kolkata", "ind.png", "Asia/Kolkata",2),
    Worldtime('London',  "uk.png","Europe/London",3),
    Worldtime("Los Angeles", "usa.png", "America/Los_Angeles",4),
    Worldtime('Madrid', "esp.png", "Europe/Madrid",5),
    Worldtime("Melbourne", "aus.png", "Australia/Melbourne",6),
    Worldtime("New york", "usa.png", "America/New_York",7),
    Worldtime("Paris", "france.png", "Europe/Paris",8),
    Worldtime('Shanghai', 'china.png', 'Asia/Shanghai',9),
    Worldtime("Sydney", "aus.png", "Australia/Sydney",10),
    Worldtime('Tokyo', 'japan.png', 'Asia/Tokyo',11),
    Worldtime("Toronto", "canada.png", "America/Toronto",12),
    Worldtime("Vancover", "canada.png", "America/Vancouver",13),
  ];


  void setworldtime (index)async
  {

    Worldtime city = locations[index] ;
    //await city.getTime();
    Navigator.pushNamed(context, "/output",arguments:{
      "location": city.location,
      //"time": city.time,
      //"date": city.date,
      "flag": city.flag,
      'index': city.index,
    }
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('CHOOSE LOACTION'),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context, index){
            return Card(
              child: ListTile(
                onTap: (){
                  setworldtime(index);
                },
                title: Text(locations[index].location),
                leading: CircleAvatar(
                  backgroundImage: AssetImage("asset/${locations[index].flag}"),
                ),
              ),
            );

          }


      )
    );
  }
}
