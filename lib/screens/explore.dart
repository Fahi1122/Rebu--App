import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../data/exploredata.dart';

class explore extends StatefulWidget {
  const explore({Key? key}) : super(key: key);

  @override
  State<explore> createState() => _exploreState();
}

class _exploreState extends State<explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 48.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // Container(
                  //   child: IconButton(
                  //       onPressed: () {}, icon: Icon(Icons.arrow_back_ios_new)),
                  // ),
                  // SizedBox(
                  //   width: 15,
                  // ),
                  Container(
                    child: Text(
                      'Explore',
                      style: GoogleFonts.firaSans(
                          fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.menu,
                        size: 50,
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 15,
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
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black54,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        child: Text('car')),
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black54,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        child: Text('laptop')),
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black54,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        child: Text('phone')),
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black54,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        child: Text('watch')),
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black54,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        child: Text('bike')),
                  ],
                ),
              ),
            ),



            Container(


              child: SingleChildScrollView(
                child: Column(

                  children: [
                    SizedBox(
                      height: 500,
                      child: ListView.builder(
                          itemCount: expo.length,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context, index) => Container(
                            height: 230,
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
                                      height: 130,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/items/${expo[index]['image']}'),
                                            fit: BoxFit.cover),
                                        borderRadius:
                                        BorderRadius.all(
                                          Radius.circular(10.0),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                      const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment
                                            .spaceBetween,
                                        children: [
                                          Column(
                                            children: [
                                              Text(expo[index]
                                              ['head']),
                                              Text(
                                                  expo[index]['sub']),
                                            ],
                                          ),
                                          Text(expo[index]['price']),
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
          ],
        ),
      ),
    );
  }
}
