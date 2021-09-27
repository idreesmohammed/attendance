
import 'package:attendanceapp/SIGNIN/sign_in_two.dart';
import 'package:flutter/material.dart';

class EasyAttendanceFirstPage extends StatefulWidget {
  @override
  _EasyAttendanceFirstPageState createState() => _EasyAttendanceFirstPageState();
}

class _EasyAttendanceFirstPageState extends State<EasyAttendanceFirstPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: height,
          width: width,
          // color: Colors.blue,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: height * 0.12,
                    width: width,
                    // color: Colors.yellow,
                  ),
                  Positioned(
                    top: -38,
                    right: -40,
                    child: Container(
                      height: 100,
                      width: 100,
                      // color: Colors.green,
                      child: Image.asset(
                        "assets/eassyattendancefirstpage/Ellipse 9.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 35,
                    top: 50,
                    child: Container(
                      height: 40,
                      width: 40,
                      // color: Colors.red,
                      child: Image.asset(
                          "assets/eassyattendancefirstpage/Ellipse 11.png"),
                    ),
                  ),
                ],
              ),
              Container(
                height: height * 0.04,
                width: width,
                // color: Colors.green,
                child: Center(
                    child: Text(
                  "easyAttendance",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Poppins",
                      fontStyle: FontStyle.normal),
                )),
              ),
              Container(
                height: height * 0.06,
                width: width,
                // color: Colors.red,
                child: Center(
                    child: Text(
                  "Easy way to Track Attendance & Location",
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: "Poppins",
                      fontStyle: FontStyle.normal),
                )),
              ),
              Container(
                height: height * 0.29,
                width: width * 0.45,
                // color: Colors.pink,
                child: Image.asset(
                    "assets/eassyattendancefirstpage/Attendance Logo.png"),
              ),
              Container(
                height: height * 0.06,
                width: width,
                // color: Colors.amber,
                child: Center(
                    child: Text(
                  "Mark Attendance",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Poppins",
                      fontStyle: FontStyle.normal),
                )),
              ),
              Container(
                height: height * 0.05,
                width: width,
                // color: Colors.grey,
                child: Center(
                    child: Text(
                  "Fast & easy way to track attendance & location ",
                  style: TextStyle(
                      fontFamily: "Poppins", fontStyle: FontStyle.normal),
                )),
              ),
              Container(
                height: height * 0.03,
                width: width,
                // color: Colors.white,
                child: Center(
                    child: Text(
                  "of your employees",
                  style: TextStyle(
                      fontFamily: "Poppins", fontStyle: FontStyle.normal),
                )),
              ),
              SizedBox(
                height: height * 0.07,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignInTwo()));
                },
                child: Container(
                  height: height * 0.08,
                  width: width * 0.6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    // color: Colors.orange,
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: <Color>[Color(0xff1488CC), Color(0xff2B32B2)],
                    ),
                  ),
                  child: Center(
                      child: Text(
                    "Sign In",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontFamily: "Poppins",
                        fontStyle: FontStyle.normal),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Stack(
        children: [
          Container(
            height: height * 0.12,
            width: width,
            // color: Colors.yellow,
          ),
          Positioned(
            bottom: -38,
            left: -40,
            child: Container(
              height: 100,
              width: 100,
              // color: Colors.green,
              child: Image.asset(
                "assets/eassyattendancefirstpage/Ellipse 9.png",
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            left: 35,
            bottom: 50,
            child: Container(
              height: 40,
              width: 40,
              // color: Colors.red,
              child:
                  Image.asset("assets/eassyattendancefirstpage/Ellipse 11.png"),
            ),
          ),
        ],
      ),
    );
  }
}
