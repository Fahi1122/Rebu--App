

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:rebuy/screens/explore.dart';
import 'package:rebuy/screens/home.dart';
import 'dart:io';
import 'package:rebuy/screens/liked%20items.dart';
import 'package:rebuy/screens/messages.dart';

import '../screens/Settings.dart';
import '../screens/extra/adding page.dart';
class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int selectedintex=0;
  // File? _image;
  // final picker = ImagePicker();
  // Future chooseImage() async {
  //   final pickedImage = await picker.pickImage(source: ImageSource.gallery);
  //   setState(() {
  //     _image = File(pickedImage!.path);
  //     });
  //   }


  @override

  Widget build(BuildContext context) {
    List _Pages=[
      home(),
      explore(),
      liked(),
      Settings()
    ];
    return  Scaffold(

      body: Center(
        child: _Pages.elementAt(selectedintex),

      ),  floatingActionButton:FloatingActionButton(
      //Floating action button on Scaffold
      onPressed: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => addproduct()));
      },
      child: Icon(Icons.add), //icon inside button
    ), floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,


   bottomNavigationBar:  BottomNavigationBar(
        
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.red,
        showUnselectedLabels: false,
        currentIndex: selectedintex,
        onTap: (index) {
          setState(() {
            selectedintex=index;
          });
        },
        items: [
          BottomNavigationBarItem(icon:Icon(Icons.home),label: 'home'),
          BottomNavigationBarItem(icon:Icon(Icons.explore),label: 'explore'),
          BottomNavigationBarItem(icon:Icon(Icons.favorite),label: 'liked'),
          BottomNavigationBarItem(icon:Icon(Icons.settings),label: 'settings')
        ],),
    );

  }
}
