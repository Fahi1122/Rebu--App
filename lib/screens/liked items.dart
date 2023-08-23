import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../data/exploredata.dart';
import '../data/likes.dart';
class liked extends StatefulWidget {
  const liked({Key? key}) : super(key: key);

  @override
  State<liked> createState() => _likedState();
}

class _likedState extends State<liked> {
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
                  //   child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios_new)),
                  // ),

                  // SizedBox(
                  //   width: 15,
                  // ),
                  Container(
                    child: Text('Liked items',style: GoogleFonts.firaSans(fontSize: 32,fontWeight: FontWeight.bold),),
                  ),

                  SizedBox(
                    width: 25,
                  ),
                  IconButton(onPressed: (){}, icon:Icon(Icons.menu,size: 50,)),
                ],
              ),
            ),
            Container(


              child: SingleChildScrollView(
                child: Column(

                  children: [
                    SizedBox(
                      height: 632,
                      child: ListView.builder(
                          itemCount: like.length,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context, index) => Container(
                            height: 125,
                            width: 170,
                            margin: EdgeInsets.all(5),
                            child: Card(
                              margin: EdgeInsets.all(10),
                              shadowColor: Colors.blueGrey,
                              elevation: 4,
                              child: Container(
                                color: Colors.blueGrey.shade200,
                                // height: 500,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 80,
                                        width: 90,
                                  decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/items/${like[index]['image']}'),
                                            fit: BoxFit.cover),
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
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              children: [
                                                Text(like[index]['head']),
                                                SizedBox(height: 10,),
                                                Text(like[index]['sub']),
                                                SizedBox(height: 10,),
                                                Text(like[index]['price']),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 110,
                                    ),
                                    IconButton(onPressed: (){}, icon: Icon(Icons.favorite,color:Colors.red,)),
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
      )


      ,
    );
  }
}
