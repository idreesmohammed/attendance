import 'package:flutter/material.dart';


import 'newCalender.dart';

class PendingList extends StatefulWidget {
  const PendingList({Key? key}) : super(key: key);

  @override
  _PendingListState createState() => _PendingListState();
}

class _PendingListState extends State<PendingList> {
  bool isButtonClick = false;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      // resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Container(
            height: height,
            width: width,
            // color: Colors.red,
            child: Column(
              children: [
                Container(
                  height: height * 0.15,
                  width: width,
                  child: Calender2(),
                ),
                Stack(children: [
                  Card(
                    shadowColor: Color(0xff2446B8),
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Container(
                      height: height * 0.2,
                      width: width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 4,
                              color: Color(
                                0xff2446B8,
                              ).withOpacity(0.7),
                              offset: Offset(0.3, 0))
                        ],
                        borderRadius: BorderRadius.circular(12),
                        // color: Colors.red
                      ),
                    ),
                  ),
                  Positioned(
                    top: 35,
                    left: 6,
                    child: Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        height: height * 0.10,
                        width: width * 0.20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff2446B8),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: height * 0.07,
                    left: width * 0.09,
                    child: Text(
                      "12",
                      style: TextStyle(
                          color: Color(0xffFFFCFB),
                          fontSize: 18,
                          fontFamily: "Poppins",
                          fontStyle: FontStyle.normal),
                    ),
                  ),
                  Positioned(
                    top: height * 0.1,
                    left: width * 0.07,
                    child: Text(
                      "Sun",
                      style: TextStyle(
                          color: Color(0xffFFFCFB),
                          fontSize: 18,
                          fontFamily: "Poppins",
                          fontStyle: FontStyle.normal),
                    ),
                  ),
                  Positioned(
                    top: height * 0.1,
                    left: width * 0.27,
                    child: Text(
                      "Plumping Work",
                      style: TextStyle(
                          color: Color(0xff636363),
                          fontSize: 13,
                          fontFamily: "Poppins",
                          fontStyle: FontStyle.normal),
                    ),
                  ),
                  Positioned(
                      top: height * 0.07,
                      right: width * 0.04,
                      child: Container(
                        height: height * 0.07,
                        width: width * 0.38,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                primary: Color(0xff2446B8)),
                            onPressed: () {
                              setState(() {
                                isButtonClick == true ? Text("tt") : null;
                              });
                            },
                            child: Text(
                              "Reason",
                              style: TextStyle(
                                  color: Color(0xffFFFCFB),
                                  fontSize: 15,
                                  fontFamily: "Poppins",
                                  fontStyle: FontStyle.normal),
                            )),
                      )),
                  // Positioned(
                  //   top: 180,
                  //   left: 5,
                  //   child: Container(
                  //     height: height * 0.20,
                  //     width: width * 0.95,
                  //     // color: Colors.red,
                  //     child: TextFormField(
                  //         decoration: InputDecoration(
                  //       hintText: "Type your reason",
                  //       border: InputBorder.none,
                  //     )),
                  //   ),
                  // ),
                ]),
              ],
            ),
          ),
        ));
  }
}
