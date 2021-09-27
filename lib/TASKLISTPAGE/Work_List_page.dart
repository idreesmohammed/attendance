
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

import 'newCalender.dart';

class WorkList extends StatefulWidget {
  const WorkList({Key? key}) : super(key: key);

  @override
  _WorkListState createState() => _WorkListState();
}

class _WorkListState extends State<WorkList> {
  @override
  void initState() {
    // TODO: implement initState
    setState(() {
      Calender2();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height,
      width: width,
      // color: Colors.red,
      child: Column(
        children: [
          Container(
            height: height * 0.15,
            width: width,
             // color: Colors.green,
            child: Calender2(),
          ),
          Container(
            height: height * 0.6,
            width: width,
            // color: Colors.purple,
            child: ListView.builder(
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    shadowColor: Color(0xff2446B8),
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Stack(
                      children: [
                        Container(
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
                              borderRadius: BorderRadius.circular(12)),
                        ),
                        Positioned(
                            top: 35,
                            left: 5,
                            child: Card(
                              elevation: 3,
                              shadowColor: Color(0xff2446B8),
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
                            )),
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
                          top: height * 0.09,
                          left: width * 0.25,
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
                          top: height * 0.02,
                          right: width * 0.02,
                          child: containerElevatedButton(height, width,
                              text: "Completed", ontap: () {}),
                        ),
                        Positioned(
                          top: height * 0.115,
                          right: width * 0.02,
                          child: containerElevatedButton(height, width,
                              text: "Pending", ontap: () {}),
                        )
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }

  Container containerElevatedButton(double height, double width,
      {text, ontap}) {
    return Container(
      height: height * 0.07,
      width: width * 0.38,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Color(0xff2446B8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              )),
          onPressed: ontap,
          child: Text(
            text,
            style: TextStyle(
                color: Color(0xffFFFCFB),
                fontSize: 15,
                fontFamily: "Poppins",
                fontStyle: FontStyle.normal),
          )),
    );
  }
}
