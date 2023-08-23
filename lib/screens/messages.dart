// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:rebuy/data/mssgs.dart';
//
// import '../data/exploredata.dart';
// import '../data/likes.dart';
// class messages extends StatefulWidget {
//   const messages({Key? key}) : super(key: key);
//
//   @override
//   State<messages> createState() => _messagesState();
// }
//
// class _messagesState extends State<messages> {
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       body:SingleChildScrollView(
//         child: Column(
//
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(top: 48.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   Container(
//                     child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios_new)),
//                   ),
//
//                   SizedBox(
//                     width: 15,
//                   ),
//                   Container(
//                     child: Text('Messages',style: GoogleFonts.firaSans(fontSize: 32,fontWeight: FontWeight.bold),),
//                   ),
//
//                   SizedBox(
//                     width: 25,
//                   ),
//                   IconButton(onPressed: (){}, icon:Icon(Icons.menu,size: 50,)),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(18.0),
//               child: TextField(
//
//                 decoration: InputDecoration(
//                     filled: true,
//                     fillColor: Colors.grey.shade300,
//                     suffixIcon:Icon(Icons.search_rounded),
//                     hintText: 'Search in messages',
//                     contentPadding: const EdgeInsets.all(15),
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(20))),
//                 onChanged: (value) {
//                   // do something
//                 },
//               ),
//             ),
//             Container(
//
//
//               child: SingleChildScrollView(
//                 child: Column(
//
//                   children: [
//                     SizedBox(
//                       height: 632,
//                       child: ListView.builder(
//                           itemCount: mssges.length,
//                           scrollDirection: Axis.vertical,
//                           itemBuilder: (context, index) => Container(
//                             height: 100,
//                             width: 170,
//                             margin: EdgeInsets.all(5),
//                             child: Card(
//                               margin: EdgeInsets.all(10),
//                               shadowColor: Colors.blueGrey,
//                               elevation: 4,
//                               child: Container(
//                                 color: Colors.blueGrey.shade200,
//                                 // height: 500,
//                                 child: Row(
//                                   children: [
//
//                                           Padding(
//                                             padding: const EdgeInsets.all(8.0),
//                                             child: CircleAvatar(
//                                               backgroundColor: Colors.black,
//                                               radius: 30,
//                                               child: CircleAvatar(
//                                                 radius: 40,
//                                                 backgroundImage: AssetImage('assets/images/people/User.png'),
//                                               ),
//                                             ),
//                                           ),
//
//                                     Padding(
//                                       padding:
//                                       const EdgeInsets.all(8.0),
//                                       child: Row(
//                                         mainAxisAlignment:
//                                         MainAxisAlignment
//                                             .spaceBetween,
//                                         children: [
//                                           Padding(
//                                             padding: const EdgeInsets.all(8.0),
//                                             child: Column(
//                                               children: [
//                                                 Padding(
//                                                   padding: const EdgeInsets.all(8.0),
//                                                   child: Text(mssges[index]['head'],style: TextStyle(fontSize: 20),),
//                                                 ),
//
//
//                                               ],
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           )),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       )
//
//
//       ,
//     );
//   }
// }
