import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rebuy/login/login.dart';

import 'My Account.dart';

class sidebar2 extends StatefulWidget {
  const sidebar2({Key? key}) : super(key: key);

  @override
  State<sidebar2> createState() => _sidebar2State();
}

class _sidebar2State extends State<sidebar2> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Scaffold(
          body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(28.0),
          child: Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text(
                    'ReBuy',
                    style: GoogleFonts.dosis(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                  ),
                ),
                Container(
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.clear,
                        size: 50,
                      )),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            children: [
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Colors.blueGrey.shade200,
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.person_outline_outlined,
                        size: 45,
                      ),
                      title: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => account()));
                          },
                          child: Text(
                            'My Account',
                            style: GoogleFonts.firaSans(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          )),
                      subtitle: Text(
                        'Edit you details, account settings ',
                        style: GoogleFonts.firaSans(
                          fontSize: 13,
                        ),
                      ),
                      onTap: () {},
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 13,
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Colors.blueGrey.shade200,
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.shopping_bag_outlined,
                        size: 45,
                      ),
                      title: Text(
                        'My Posts ',
                        style: GoogleFonts.firaSans(
                            fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text(
                        'View all your posts',
                        style: GoogleFonts.firaSans(
                          fontSize: 13,
                        ),
                      ),
                      onTap: () {},
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 13,
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Colors.blueGrey.shade200,
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.list,
                        size: 45,
                      ),
                      title: Text(
                        'My Listings',
                        style: GoogleFonts.firaSans(
                            fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text(
                        'View your product listing for sale',
                        style: GoogleFonts.firaSans(
                          fontSize: 13,
                        ),
                      ),
                      onTap: () {},
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 13,
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Colors.blueGrey.shade200,
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.favorite_border,
                        size: 45,
                      ),
                      title: Text(
                        'Liked Items',
                        style: GoogleFonts.firaSans(
                            fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text(
                        'See the products you have wishlisted',
                        style: GoogleFonts.firaSans(
                          fontSize: 13,
                        ),
                      ),
                      onTap: () {},
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(38.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 47.0,
                width: 150,
                decoration: BoxDecoration(),
                child: OutlinedButton(
                  onPressed: () {
                    // Add your on pressed event here
                  },
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  child: const Text(
                    'Feedback',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Container(
                height: 47.0,
                width: 150,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                    // Add your on pressed event here
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black54,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  child: const Text('Sign out'),
                ),
              ),
            ],
          ),
        ),
        Center(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 45.0),
                child: Container(
                  height: 100,
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/images/Waves.png',
                    height: 100,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 98.0),
                  child: Text(
                    'ReBuy Inc. Version 1.0',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ])),
    );
  }
}
