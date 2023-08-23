import 'package:flutter/material.dart';
import 'package:rebuy/login/splash.dart';
import 'package:rebuy/screens/explore.dart';
import 'package:rebuy/screens/extra/My%20Account.dart';
import 'package:rebuy/screens/extra/Side%20bar.dart';
import 'package:rebuy/screens/extra/Side%20bar2.dart';
import 'package:rebuy/screens/extra/nav.dart';
import 'package:rebuy/screens/home.dart';
import 'package:rebuy/screens/liked%20items.dart';
import 'package:rebuy/screens/messages.dart';

import 'data/bottamnavbar.dart';
import 'login/login.dart';
import 'login/signUp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),



    );
  }
}
