import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rebuy/data/mssgs.dart';

class NewArr extends StatefulWidget {
  const NewArr({Key? key}) : super(key: key);

  @override
  State<NewArr> createState() => _NewArrState();
}

class _NewArrState extends State<NewArr> {
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
                    child: Text('New Arrivels',style: GoogleFonts.firaSans(fontSize: 32,fontWeight: FontWeight.bold),),
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
