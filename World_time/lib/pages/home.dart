import 'package:flutter/material.dart';
import 'package:world_time/pages/choose_location.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('WORLD TIME APP '),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.fromLTRB(0, 30, 0, 0)),
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage("asset/globe2.jpg"),
              radius: 100,
            ),
      ),
          SizedBox(height: 35,),
          Text(
            "HELLO USERS",
            style: TextStyle(
              fontFamily: "fascinate",
              fontSize: 30,
              color: Colors.indigo[500],
            ),
          ),
          Text(
            "WELCOME TO THE",
            style: TextStyle(
              fontFamily: "fascinate",
              fontSize: 30,
              color: Colors.indigo[500],
            ),
          ),
          Text(
            "WORLD TIME APP",
            style: TextStyle(
              fontFamily: "fascinate",
              fontSize: 30,
              color: Colors.indigo[500],
            ),
          ),
          SizedBox(height: 100,),

          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Center(
              child: Text(
                  "THIS APP WILL TELL YOU THE TIME",
              style: TextStyle(
                fontFamily: "comingsoon",
                fontSize: 15,
                color: Colors.indigo[500],
                fontWeight: FontWeight.bold,
              ),
              ),

            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Center(
              child: Text(
                "OF THE LOCATIONS YOU SELECT",
                style: TextStyle(
                  fontFamily: "comingsoon",
                  fontSize: 15,
                  color: Colors.indigo[500],
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 50,),
          TextButton.icon(
            icon: Icon(Icons.add_location_sharp),
            label: Text("CHOOSE A LOCATION",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          onPressed: (){
            Navigator.pushNamed(context, "/choose");
          },
            style: TextButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Colors.blueAccent,
            ),
          ),
          SizedBox(height: 30,),
          Center(
            child: Padding(
              padding: EdgeInsets.all(5.0),
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
