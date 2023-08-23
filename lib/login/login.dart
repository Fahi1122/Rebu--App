import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:rebuy/login/signUp.dart';
import 'package:rebuy/screens/home.dart';

import '../conection/connect.dart';
import '../data/bottamnavbar.dart';
import 'login.dart';
import 'login.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  Future<void> login() async {
    var data = {
      "username": usernamecontroller.text,
      "password": passwordcontroller.text,
    };
    var response = await post(Uri.parse('${Con.url}/login.php'),
        body: data);
    print(response.statusCode);
    print(response.body);
    if (jsonDecode(response.body)['result'] == 'Success') {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Login Success....')));
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const NavBar()));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Failed to Login !!....')));
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const Login()));
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
                  'Log in',
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
                    hintText: 'enter your email',
                    contentPadding: const EdgeInsets.all(15),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
                onChanged: (value) {
                  // do something
                },
              ),
            ),
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

                  if (passwordcontroller.text.isNotEmpty &&
                      usernamecontroller.text.isNotEmpty) {
                    setState(() {
                      login();
                    });
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('all field requred')));
                  }
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent),
                child: Text('Log in'),
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
                      'Don’t have an account?',
                      style: TextStyle(fontSize: 12),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => signup()));
                      },
                      child: Text(
                        'Sign up',
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
