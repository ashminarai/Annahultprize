import 'package:anna_hult/common/ui/ui_helper.dart';
import 'package:anna_hult/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class BuyerHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 25,
                  backgroundImage: AssetImage("assets/images/anna_logo.png"),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.green,
                    ),
                    Text(
                      "Deliver to\nAaitabare-Itahari, Nepal",
                      style: GoogleFonts.poppins(
                          color: Colors.black, fontSize: 14.0),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(FontAwesome.search),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: kTertiaryTextColor),
                    borderRadius: BorderRadius.circular(10)),
                hintText: "Search for goods...",
                hintStyle: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Categories",
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                mWidthSpan,
                Column(children: [
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: 35,
                    backgroundImage: AssetImage(
                      "assets/images/vegetable.jpg",
                    ),
                  ),
                  Text(
                    "Vegetables",
                    style: GoogleFonts.poppins(
                        color: Colors.black, fontSize: 14.0),
                  )
                ]),
                sWidthSpan,
                Column(children: [
                  //"assets/images/rice.jpeg"
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: 35,
                    backgroundImage: AssetImage(
                      "assets/images/rice.jpeg",
                    ),
                  ),
                  Text(
                    "Rice",
                    style: GoogleFonts.poppins(
                        color: Colors.black, fontSize: 14.0),
                  )
                ]),
                sWidthSpan,
                Column(children: [
                  // Image.asset("assets/images/cereals.jpg", width: 80),
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: 35,
                    backgroundImage: AssetImage(
                      "assets/images/cereals.jpg",
                    ),
                  ),
                  Text(
                    "Cereals",
                    style: GoogleFonts.poppins(
                        color: Colors.black, fontSize: 14.0),
                  )
                ]),
                sWidthSpan,
                Column(children: [
                  // Image.asset("assets/images/milkcategory.jpg", width: 80),
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: 35,
                    backgroundImage: AssetImage(
                      "assets/images/milkcategory.jpg",
                    ),
                  ),
                  Text(
                    "Dairy",
                    style: GoogleFonts.poppins(
                        color: Colors.black, fontSize: 14.0),
                  )
                ]),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Our Highlights",
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                Text("View All",
                    style: GoogleFonts.poppins(color: Colors.black))
              ],
            ),
            Expanded(
              child: ListView(
                children: [
                  Row(
                    children: [
                      sWidthSpan,
                      Card(
                        color: Colors.yellow[100],
                        elevation: 10,
                        child: Column(children: [
                          Image.asset(
                            "assets/images/cauliflower.jpg",
                            width: 100,
                            height: 120,
                          ),
                          Text("Cauliflower",
                              style: GoogleFonts.poppins(color: Colors.black))
                        ]),
                      ),
                      Card(
                        color: Colors.yellow[100],
                        elevation: 10,
                        child: Column(children: [
                          Image.asset(
                            "assets/images/rice.jpeg",
                            width: 100,
                            height: 120,
                          ),
                          Text("Rice",
                              style: GoogleFonts.poppins(color: Colors.black))
                        ]),
                      ),
                      Card(
                        color: Colors.yellow[100],
                        elevation: 10,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/milk.png",
                                width: 100,
                                height: 120,
                              ),
                              Text("Milk",
                                  style:
                                      GoogleFonts.poppins(color: Colors.black))
                            ]),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      sWidthSpan,
                      Card(
                        color: Colors.yellow[100],
                        elevation: 10,
                        child: Column(children: [
                          Image.asset(
                            "assets/images/lentils.jpg",
                            width: 100,
                            height: 120,
                          ),
                          Text("Lentils",
                              style: GoogleFonts.poppins(color: Colors.black))
                        ]),
                      ),
                      Card(
                        color: Colors.yellow[100],
                        elevation: 10,
                        child: Column(children: [
                          Image.asset(
                            "assets/images/potato.jpg",
                            width: 100,
                            height: 120,
                          ),
                          Text("Potato",
                              style: GoogleFonts.poppins(color: Colors.black))
                        ]),
                      ),
                      Card(
                        color: Colors.yellow[100],
                        elevation: 10,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/flour.jpg",
                                width: 100,
                                height: 120,
                              ),
                              Text("Flour",
                                  style:
                                      GoogleFonts.poppins(color: Colors.black))
                            ]),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
