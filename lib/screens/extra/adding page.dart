import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'dart:async';
import 'package:flutter/material.dart';
class addproduct extends StatefulWidget {
  const addproduct({super.key});

  @override
  State<addproduct> createState() => _addproductState();
}
class _addproductState extends State<addproduct> {

  File? _image;
  final picker = ImagePicker();
  Future chooseImage() async {
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = File(pickedImage!.path);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        SingleChildScrollView(
            child: Column(
              children:[


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
                        child: Text('Add Item',style: GoogleFonts.firaSans(fontSize: 32,fontWeight: FontWeight.bold),),
                      ),

                      SizedBox(
                        width: 25,
                      ),
                      IconButton(onPressed: (){  Navigator.pop(context);}, icon:Icon(Icons.menu,size: 50,)),
                    ],
                  ),
                ),SizedBox(
                  height: 20,
                ),



                Container(
                  height: 200,width: 200,

                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.blueGrey, Colors.blueGrey])),
                  child:Center(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black45, // Background color
                        ),
                        child: Text("choose from gallery"),
                        onPressed: (){
                          chooseImage();

                        }
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left:15),
                  child: Container(
                    width: 350,
                    child: TextField(
                      decoration: InputDecoration(labelText: "Item Name",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5))),),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left:15),
                  child: Container(
                    width: 350,
                    child: TextField(
                      decoration: InputDecoration(labelText: "Price ",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5))),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left:15),
                  child: Container(
                    width: 350,
                    child: TextField(
                      decoration: InputDecoration(labelText: "Description",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5))),),
                  ),
                ),  SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left:15),
                  child: Container(
                    width: 350,
                    child: TextField(
                      decoration: InputDecoration(labelText: "Phone Number ",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5))),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 47.0,
                  width: 160,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.pinkAccent, Colors.redAccent])),
                  child: ElevatedButton(
                    onPressed: () {

                    //   if (passwordcontroller.text.isNotEmpty &&
                    //       usernamecontroller.text.isNotEmpty) {
                    //     setState(() {
                    //       login();
                    //     });
                    //   } else {
                    //     ScaffoldMessenger.of(context).showSnackBar(
                    //         SnackBar(content: Text('all field requred')));
                    //   }
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent),
                    child: Text('Post'),
                  ),
                ),
              ],
            ),
            ),
        );
    }
}