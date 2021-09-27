
import 'package:attendanceapp/EXPENSES/petrolexpenses/PETROLTABBAR/petrolActivePage.dart';
import 'package:flutter/material.dart';

import 'PetrolSubmitedPage.dart';

class PetrolTabBar extends StatefulWidget {
  @override
  _PetrolTabBarState createState() => _PetrolTabBarState();
}

class _PetrolTabBarState extends State<PetrolTabBar> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: DefaultTabController(
          length: 2,
          child: Scaffold(
            body: Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/background/background.png"),
                    fit: BoxFit.fill),
              ),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: height * 0.25,
                        width: width,
                        // color: Colors.red,
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          )),
                      Positioned(
                        top: 7,
                        left: 90,
                        child: Text(
                          "Petrol Expenses",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      Positioned(
                        top: 35,
                        right: 15,
                        child: Text(
                          "Select",
                          style:
                              TextStyle(color: Color(0xff5A4A42), fontSize: 15),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 45,
                        child: Container(
                            height: height * 0.1,
                            width: width * 0.8,
                            color: Color(0xffF1F1F1),
                            child: Text(
                              " Mileage Rate - Per Distance",
                              style: TextStyle(
                                color: Color(0xffD1CDCC),
                              ),
                            )),
                      )
                    ],
                  ),
                  Container(
                      height: height * 0.08,
                      width: width,
                      child: TabBar(
                        unselectedLabelStyle: TextStyle(color: Colors.amber),
                        tabs: [
                          Container(
                            child: Text(
                              "Active",
                              style: TextStyle(color: Color(0xff2B3990)),
                            ),
                          ),
                          Container(
                            child: Text(
                              "Submitted",
                              style: TextStyle(color: Color(0xff2B3990)),
                            ),
                          ),
                        ],
                      )),
                  Container(
                    height: height * 0.63,
                    width: width,
                    child: TabBarView(children: [
                      PetrolActivePage(),
                      PetrolSubmitedPage(),
                    ]),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
