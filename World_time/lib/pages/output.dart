import 'package:flutter/material.dart';
import 'class_world_time.dart';
import 'choose_location.dart';
import 'choose_location.dart';

class Output extends StatefulWidget {
  const Output({Key? key}) : super(key: key);

  @override
  State<Output> createState() => _OutputState();
}

  class _OutputState extends State<Output> {
  Map data={};

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
  String time='';
  String date='';
  String location='';

  void setworldtime (index)async
  {
    Worldtime city = locations[index];
    await city.getTime();
    setState(() {
      time = city.time;
      date = city.date;
      //location = city.location;
    });
  }


  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments as Map;
    final index=data['index'];
    final flag = data['flag'];
    final location = data['location'];
    setworldtime(index);

    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('TIME-DATE'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage("asset/$flag")),
          Divider(
            height: 60.0,
            thickness: 0.85,
            color: Colors.blue[900],
            indent: 50,
            endIndent: 50,
          ),

          Center(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(location,
                style: TextStyle(
                  fontSize: 50,
                  fontFamily: 'comingsoon',
                  color: Colors.indigo[700],
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),

          SizedBox(height: 10,),

          Center(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Text('TIME:- $time',
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'comingsoon',
                  color: Colors.indigo[700],
                  fontWeight: FontWeight.w900,
                ),
              ),
              ),
            ),

          SizedBox(height: 10,),
          Center(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Text("DATE:- $date",
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'comingsoon',
                  color: Colors.indigo[700],
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
          SizedBox(height: 30,),
          Center(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Text('Dhruv gupta 102103331',
                style: TextStyle(
                  fontSize: 10,
                  fontFamily: 'comingsoon',
                  color: Colors.indigo[700],
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),

        ],
      ),
      );
  }
}
