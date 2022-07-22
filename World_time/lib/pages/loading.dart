import 'package:flutter/material.dart';
import 'class_world_time.dart';
import 'output.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void setworldtime ()async
  {
    String location='';
    String time='';
    String date='';

    Worldtime city1 = Worldtime("Dubai","ind.png",'Asia/Dubai',0);
    await city1.getTime();
    Navigator.pushNamed(context, "/output",arguments:{
      "location": location,
      "time": time,
      "date": date,
    }
    );

  }

  @override
  void initState() {
    super.initState();
    setworldtime();
  }
  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments as Map;
    final time = data['time'];
    final date = data['date'];
    final location = data["location"];

    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('LOADING'),
        centerTitle: true,
      ),
      body: Center(
          child: SpinKitChasingDots(
            color: Colors.white,
            size: 50.0,
          ),
      ),
    );
  }
}
