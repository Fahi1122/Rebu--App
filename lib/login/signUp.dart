import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:rebuy/data/bottamnavbar.dart';

import '../conection/connect.dart';
import 'login.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  Future<void> signUp() async {
    var data = {
      "username": usernamecontroller.text,
      "password": passwordcontroller.text,
    };
    var response = await post(
        Uri.parse('${Con.url}/signup.php'),
        body: data);
    print(response.statusCode);
    print(response.body);
    if (jsonDecode(response.body)['result'] == 'Success') {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Registered....')));
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const Login()));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Failed to register !!....')));
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const signup()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 60.0, left: 240),
                child: Text(
                  'ReBuy',
                  style: GoogleFonts.dosis(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(right: 230),
                child: Text(
                  'Sign up',
                  style: GoogleFonts.dosis(
                    fontWeight: FontWeight.w800,
                    fontSize: 42,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              child: ElevatedButton.icon(
                onPressed: () {
                  print("You pressed Icon Elevated Button");
                },

                icon: Icon(
                  Icons.g_mobiledata_outlined,
                  size: 47,
                  color: Colors.redAccent,
                ), //icon data for elevated button
                label: Text(
                  "Countinue With Google",
                  style: TextStyle(color: Colors.black45),
                ), //label text
                style: ElevatedButton.styleFrom(primary: Colors.white60),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Row(children: <Widget>[
              Expanded(
                child: new Container(
                    margin: const EdgeInsets.only(left: 10.0, right: 15.0),
                    child: Divider(
                      color: Colors.black,
                      height: 10,
                    )),
              ),
              Text("OR"),
              Expanded(
                child: new Container(
                    margin: const EdgeInsets.only(left: 15.0, right: 10.0),
                    child: Divider(
                      color: Colors.black,
                      height: 10,
                    )),
              ),
            ]),

            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextFormField(
                controller: usernamecontroller,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade300,
                    hintText: 'Name',
                    contentPadding: const EdgeInsets.all(15),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
                onChanged: (value) {
                  // do something
                },
              ),
            ),

            // Padding(
            //   padding: const EdgeInsets.only(left: 18.0,right: 18),
            //   child: TextField(
            //     decoration: InputDecoration(
            //         filled: true,
            //         fillColor: Colors.grey.shade300,
            //         hintText: 'Email',
            //         contentPadding: const EdgeInsets.all(15),
            //         border: OutlineInputBorder(
            //             borderRadius: BorderRadius.circular(20))),
            //     onChanged: (value) {
            //       // do something
            //     },
            //   ),
            // ),
            // SizedBox(
            //   height: 20,
            // ),

            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18),
              child: TextFormField(
                controller: passwordcontroller,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade300,
                    hintText: 'password',
                    contentPadding: const EdgeInsets.all(15),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
                onChanged: (value) {
                  // do something
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 47.0,
              width: 360,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.pinkAccent, Colors.redAccent])),
              child: ElevatedButton(
                onPressed: () {
                  if (usernamecontroller.text.isNotEmpty &&
                      passwordcontroller.text.isNotEmpty) {
                    setState(() {
                      signUp();
                      print('ready to add fields');
                    });
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text('All fields required !!!....')));
                  }
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent),
                child: Text('Create account'),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 100),
                child: Row(
                  children: [
                    Text(
                      'Already have an account?',
                      style: TextStyle(fontSize: 12),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(

                        'Log in',
                        style: TextStyle(color: Colors.redAccent),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
