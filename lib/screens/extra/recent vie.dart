import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rebuy/data/mssgs.dart';

class Recentv extends StatefulWidget {
  const Recentv({Key? key}) : super(key: key);

  @override
  State<Recentv> createState() => _RecentvState();
}

class _RecentvState extends State<Recentv> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:SingleChildScrollView(
        child: Column(

          children: [
            Padding(
              padding: const EdgeInsets.only(top: 48.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // Container(
                  //   child: IconButton(onPressed: (){  ;}, icon: Icon(Icons.arrow_back_ios_new)),
                  // ),

                  // SizedBox(
                  //   width: 15,
                  // ),
                  Container(
                    child: Text('Recently viewed',style: GoogleFonts.firaSans(fontSize: 32,fontWeight: FontWeight.bold),),
                  ),

                  // SizedBox(
                  //   width: 25,
                  // ),
                  // IconButton(onPressed: (){}, icon:Icon(Icons.menu,size: 50,)),
                ],
              ),
            ),
          ],
        ),
      )


      ,
    );
  }
}
