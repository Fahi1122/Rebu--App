// import 'package:flutter/material.dart';
// import 'package:rebuy/data/exploredata.dart';
// import 'package:rebuy/data/mssgs.dart';
// import 'package:rebuy/screens/liked%20items.dart';
//
// import '../Settings.dart';
// import '../explore.dart';
// import '../home.dart';
// import '../messages.dart';
// class naa extends StatefulWidget {
//   const naa({Key? key}) : super(key: key);
//
//   @override
//   State<naa> createState() => _naaState();
// }
//
// class _naaState extends State<naa> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton:FloatingActionButton( //Floating action button on Scaffold
//         onPressed: (){
//           //code to execute on button press
//         },
//         child: Icon(Icons.add), //icon inside button
//       ),
//
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       //floating action button position to center
//
//       bottomNavigationBar: BottomAppBar( //bottom navigation bar on scaffold
//         color:Colors.redAccent,
//         shape: CircularNotchedRectangle(), //shape of notch
//         notchMargin: 5, //notche margin between floating button and bottom appbar
//         child: Row( //children inside bottom appbar
//           mainAxisSize: MainAxisSize.max,
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: <Widget>[
//             IconButton(icon: Icon(Icons.home, color: Colors.white,), onPressed: () {
//
//               Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => home()));
//
//
//             },),
//             IconButton(icon: Icon(Icons.explore, color: Colors.white,), onPressed: () {
//               Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => explore()));
//             },),
//             IconButton(icon: Icon(Icons.favorite_border, color: Colors.white,), onPressed: () {
//               Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => liked()));
//
//             },),
//              IconButton(icon: Icon(Icons.settings,color:Colors.white,), onPressed: () {
//               Navigator.push(
//                context,
//                 MaterialPageRoute(
//                       builder: (context) => Settings()));
//              },),
//           ],
//         ),
//       ),
//     );
//   }
// }
