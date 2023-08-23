import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class account extends StatefulWidget {
  const account({Key? key}) : super(key: key);

  @override
  State<account> createState() => _accountState();
}

class _accountState extends State<account> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      

      body:SingleChildScrollView(
        child: Column(
          
            children: [
        Row(
          mainAxisAlignment:MainAxisAlignment.spaceBetween,
        children: [
        Container(
        child: Padding(
        padding: const EdgeInsets.only(top: 40.0,left: 20),
        child: CircleAvatar(
          backgroundColor: Colors.black,
          radius: 50,
          child: CircleAvatar(
            radius: 45,
            backgroundImage: AssetImage('assets/images/people/User.png'),
          ),
        ),
    ),
    ),
    SizedBox(
    width: 15,
    ),
    Column(
    children: [
    Container(
    child: Text('Hey Alice',style: GoogleFonts.firaSans(fontSize: 32,fontWeight: FontWeight.bold),),
    ),
    Container(
    child: Text('alice.eve@gmail.com',style: GoogleFonts.firaSans(fontSize: 14,color: Colors.redAccent),
    ),
    ),
    ],
    ),
    SizedBox(
    width: 35,
    ),
    IconButton(onPressed: (){
        Navigator.pop(context);
    }, icon:Icon(Icons.clear,size: 50,)),
          SizedBox(
            width: 8,
          ),
    ],
    ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.only(right: 228.0,top: 24),
                child: Container(
                  child: Text("My account",style: GoogleFonts.firaSans(fontSize: 24,color: Colors.black,fontWeight: FontWeight.bold),),
                ),
              ),SizedBox(height: 15,),
        Column(
          children: [
            Container(
             child: Padding(
               padding: const EdgeInsets.only(right: 308.0),
               child: Text('Name',style: GoogleFonts.firaSans(fontSize: 18,color: Colors.black,),),
             ),
          ),
        SizedBox(height: 5,),
        Padding(
          padding: const EdgeInsets.only(left: 18.0,bottom: 18,right: 18),
          child: TextField(

                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey.shade300,
                      suffixIcon:Icon(Icons.edit_note),
                      hintText: 'Alice Eve',
                      contentPadding: const EdgeInsets.all(15),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                  onChanged: (value) {
                    // do something
                  },
                ),
        ),
          ],
        ), Column(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 308.0),
                      child: Text('Email',style: GoogleFonts.firaSans(fontSize: 18,color: Colors.black,),),
                    ),
                  ),
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0,bottom: 18,right: 18),
                    child: TextField(

                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey.shade300,
                          suffixIcon:Icon(Icons.edit_note),
                          hintText: 'alice.eve@gmail.com',
                          contentPadding: const EdgeInsets.all(15),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                      onChanged: (value) {
                        // do something
                      },
                    ),
                  ),
                ],
              ), Column(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 308.0),
                      child: Text('Phone',style: GoogleFonts.firaSans(fontSize: 18,color: Colors.black,),),
                    ),
                  ),
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0,bottom: 18,right: 18),
                    child: TextField(

                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey.shade300,
                          suffixIcon:Icon(Icons.edit_note),
                          hintText: '+1 561-230-0033',
                          contentPadding: const EdgeInsets.all(15),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                      onChanged: (value) {
                        // do something
                      },
                    ),
                  ),
                ],
              ), Column(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 308.0),
                      child: Text('Address:',style: GoogleFonts.firaSans(fontSize: 18,color: Colors.black,),),
                    ),
                  ),
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0,bottom: 18,right: 18),
                    child: TextField(


                      decoration: InputDecoration(

                          filled: true,
                          fillColor: Colors.grey.shade300,
                          suffixIcon:Icon(Icons.edit_note),
                          hintText: 'Alice Eve'
                              '2074, Half and Half Drive'
                              'Hialeah, Florida - 33012',
                          contentPadding: const EdgeInsets.all(15),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                      onChanged: (value) {
                        // do something
                      },
                    ),
                  ),
                ],
              ),
        ]
    ),
      ),

    );
  }
}
