import 'package:flutter/material.dart';
import 'package:world_time/pages/home.dart';
import 'package:world_time/pages/loading.dart';
import 'package:world_time/pages/choose_location.dart';
import 'package:world_time/pages/output.dart';
void main() {
   runApp(MaterialApp(
    // home: hello(),
     initialRoute: '/home',
     routes: {
       '/home' : (context) => const Home(),
       '/load': (context) => const Loading(),
       '/choose' : (context) => const ChooseLocation(),
       '/output' : (context) => const Output(),
    },
  ));
}

// class hello extends StatefulWidget {
//   const hello({Key? key}) : super(key: key);
//
//   @override
//   State<hello> createState() => _helloState();
// }
//
// class _helloState extends State<hello> {
//   int currindex=0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//        // child: routes.elementAt(currindex),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.shifting,
//         currentIndex: currindex,
//         onTap: (index)=>setState(() =>currindex=index),
//         items: const <BottomNavigationBarItem>[
//         BottomNavigationBarItem(
//         icon: Icon(Icons.home,
//        // color: Colors.cyan,
//         ),
//           label: 'Home',
//           backgroundColor: Colors.indigo,
//     ),
//       BottomNavigationBarItem(
//         icon: Icon(Icons.edit_location_alt),
//         label: 'choose location',
//         backgroundColor: Colors.indigo,
//     ),
//     ],
//     ),
//     );
//   }
// }
