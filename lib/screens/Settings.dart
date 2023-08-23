import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rebuy/data/mssgs.dart';

import '../data/exploredata.dart';
import '../data/likes.dart';
class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
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
                  //   child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios_new)),
                  // ),
                  //
                  // SizedBox(
                  //   width: 15,
                  // ),
                  Container(
                    child: Text('Settings',style: GoogleFonts.firaSans(fontSize: 32,fontWeight: FontWeight.bold),),
                  ),

                  SizedBox(
                    width: 25,
                  ),
                  IconButton(onPressed: (){}, icon:Icon(Icons.menu,size: 50,)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
