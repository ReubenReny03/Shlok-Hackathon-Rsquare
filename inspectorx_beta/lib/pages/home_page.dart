import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:image_card/image_card.dart';
import 'package:material_neumorphic/material_neumorphic.dart';
// import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class HomePage extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const HomePage({Key? key}); // Correcting constructor syntax

  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    // final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: const GNav(
        gap: 8,
        tabs: [
          GButton(
            icon: Icons.home,
            text: "Home",
          ),
          GButton(
            icon: Icons.favorite_border,
            text: "Likes",
          ),
          GButton(
            icon: Icons.search,
            text: "Search",
          ),
          GButton(
            icon: Icons.settings,
            text: "Settings",
          ),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Column(
        children: [
          Container(
            height: 130,
            decoration: const BoxDecoration(color: Color(0xff162535)),
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  top: 100,
                  child: Container(
                    height: 100,
                    width: width,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  left: 20,
                  top: 50,
                  child: Text(
                    "Hello, Inspector",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                Positioned(
                  left: 320,
                  top: 40,
                  child: IconButton(
                    onPressed: signUserOut,
                    icon: const Icon(
                      Icons.logout,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // const SizedBox(height: 15),
          // Container(
          //   color: const Color.fromARGB(255, 255, 255, 255),
          //   height: 200,
          //   child: Stack(
          //     children: [
          //       // Positioned(
          //       //   child: Material(
          //       //     child: Container(
          //       //       height: 180.0,
          //       //       width: width * 0.9,
          //       //       decoration: BoxDecoration(
          //       //         color: Colors.white,
          //       //         borderRadius: BorderRadius.circular(40.0),
          //       //         boxShadow: [
          //       //           BoxShadow(
          //       //             color: Colors.grey.withOpacity(0.3),
          //       //             offset: const Offset(-10.0, 10.0),
          //       //             blurRadius: 20.0,
          //       //             spreadRadius: 4.0,
          //       //           ),
          //       //         ],
          //       //       ),
          //       //     ),
          //       //   ),
          //       // ),
          //       Positioned(
          //           child: Card(
          //         // elevation: 10.0,
          //         // shadowColor: Colors.white.withOpacity(0.5),
          //         // color: Colors.white,
          //         child: Container(
          //           height: 200,
          //           width: width * 0.71,
          //           decoration: BoxDecoration(
          //               color: Colors.white,
          //               borderRadius: BorderRadius.circular(0),
          //               image: const DecorationImage(
          //                   fit: BoxFit.scaleDown,
          //                   image: AssetImage("lib/images/card_image.png"))),
          //         ),
          //       )),
          //       const Positioned(
          //         left: 20,
          //         top: 60,
          //         child: Text(
          //           "Points: 50 ",
          //           style: TextStyle(
          //             color: Colors.white,
          //             fontSize: 20,
          //           ),
          //         ),
          //       ),
          //       const Positioned(
          //         left: 20,
          //         top: 100,
          //         child: Text(
          //           "Idustry Inspector",
          //           style: TextStyle(
          //             color: Colors.white,
          //             fontSize: 20,
          //           ),
          //         ),
          //       ),
          //       Positioned(
          //         left: 190,
          //         top: 20,
          //         height: 150,
          //         child: Image.asset("lib/images/badge.png"),
          //       ),
          //       const Positioned(
          //         left: 226,
          //         top: 65,
          //         child: Text(
          //           "1",
          //           style: TextStyle(
          //             color: Color.fromARGB(255, 125, 10, 10),
          //             fontSize: 30,
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          const Stack(
            children: [
              FillImageCard(
                color: Color.fromARGB(255, 255, 255, 255),
                width: 300,
                heightImage: 200,
                imageProvider: AssetImage('lib/images/star_back.png'),
                borderRadius: 0,
              ),
              Positioned(
                  left: 20,
                  top: 20,
                  child: Text("ReMo",
                      style: TextStyle(
                        color: Colors.white,
                      )))
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            color: const Color.fromARGB(255, 255, 255, 255),
            height: 100,
            child: Stack(
              children: [
                Positioned(
                  left: 10,
                  top: 0.7,
                  height: 100,
                  child: Image.asset("lib/images/audit.png"),
                ),
                Positioned(
                  left: 140,
                  top: 0.7,
                  height: 100,
                  child: Image.asset("lib/images/tasks.png"),
                ),
                Positioned(
                  left: 270,
                  top: 0.7,
                  height: 100,
                  child: Image.asset("lib/images/inspection.png"),
                )
              ],
            ),
          ),
          const SizedBox(height: 25),
          Container(
            color: Color.fromARGB(255, 255, 255, 255),
            height: 100,
            child: Stack(children: [
              Positioned(
                left: 18,
                height: 100,
                child: Image.asset(
                  "lib/images/leaderboard.png",
                  fit: BoxFit.fitWidth,
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }

  doNothing() async {}
}
