import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rebuy/screens/explore.dart';
import 'package:rebuy/screens/extra/new%20arr.dart';

import '../data/Recently viewed.dart';
import '../data/new arrivels.dart';
import 'extra/My Account.dart';
import 'extra/Side bar.dart';
import 'extra/recent vie.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(7)),
                      child: (Image(
                          image: AssetImage('assets/images/people/User.png'))),
                      onPressed: () {
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) => account()));
                      },
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        Container(
                          child: Text(
                            'Hey Alice',
                            style: GoogleFonts.firaSans(
                                fontSize: 32, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          child: Text(
                            'Welcome back!',
                            style: GoogleFonts.firaSans(
                                fontSize: 24, color: Colors.redAccent),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => sidebar()));
                        },
                        icon: Icon(
                          Icons.menu,
                          size: 50,
                        )),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade300,
                    suffixIcon: Icon(Icons.search_rounded),
                    hintText: 'Search for books, guitar and more...',
                    contentPadding: const EdgeInsets.all(15),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
                onChanged: (value) {
                  // do something
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'New arrivals',
                    style: GoogleFonts.firaSans(
                        fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NewArr()));
                      },
                      child: Text(
                        'View more',
                        style: GoogleFonts.firaSans(
                            fontSize: 14, color: Colors.grey),
                      ))
                ],
              ),
            ),
            Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 200,
                      child: ListView.builder(
                          itemCount: gridlist.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => Container(
                                height: 180,
                                width: 170,
                                margin: EdgeInsets.all(5),
                                child: Card(
                                  margin: EdgeInsets.all(10),
                                  shadowColor: Colors.blueGrey,
                                  elevation: 4,
                                  child: Container(
                                    // height: 500,
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 120,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Colors.grey,
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/items/${gridlist[index]['image']}'),
                                                fit: BoxFit.fill),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(10.0),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                children: [
                                                  Text(gridlist[index]['head']),
                                                  Text(gridlist[index]['sub']),
                                                ],
                                              ),
                                              Text(gridlist[index]['price']),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recently viewed',
                    style: GoogleFonts.firaSans(
                        fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Recentv()));
                      },
                      child: Text(
                        'View more',
                        style: GoogleFonts.firaSans(
                            fontSize: 14, color: Colors.grey),
                      ))
                ],
              ),
            ),
            Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 200,
                      child: ListView.builder(
                          itemCount: gridlist.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => InkWell(
                            onTap: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => account()));},
                            child: Container(
                                  height: 180,
                                  width: 170,
                                  margin: EdgeInsets.all(5),
                                  child: Card(
                                    margin: EdgeInsets.all(10),
                                    shadowColor: Colors.blueGrey,
                                    elevation: 4,
                                    child: Container(
                                      // height: 500,
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 120,
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              color: Colors.grey,
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/items/${recent[index]['image']}'),
                                                  fit: BoxFit.fill),
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(10.0),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                              children: [
                                                Column(
                                                  children: [
                                                    Text(gridlist[index]['head']),
                                                    Text(gridlist[index]['sub']),
                                                  ],
                                                ),
                                                Text(gridlist[index]['price']),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                          )),
                    )
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
