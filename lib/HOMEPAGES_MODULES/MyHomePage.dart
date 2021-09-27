


import 'package:attendanceapp/ATTENDANCE_RECORDS/attendance_records.dart';
import 'package:attendanceapp/MATERIAL_REQUEST/material_request.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'gridview_container.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    // double barApp = AppBar().preferredSize.height;
    // double statusBarHeight = MediaQuery.of(context).padding.top;
    // double bottomPadding = MediaQuery.of(context).padding.bottom;
    return Scaffold(
      body: SafeArea(
        child: Container(
          //color: Colors.yellow,
          height: height,
          width: width, decoration: BoxDecoration(
          //color: Colors.yellow,
          image: DecorationImage(image: AssetImage("assets/homepagemodule/attendancebg.png"),fit: BoxFit.fill),



        ),
          child: Column(
            children: [

              Container(height: height*0.080,
                width: width,
                //color: Colors.red,
                alignment: Alignment.bottomCenter,


                      child: Text("  easyAttendance",style: TextStyle(color:Color(0xff5A4A42),fontSize: 21,fontFamily: "Poppins",fontStyle: FontStyle.normal,fontWeight: FontWeight.w600 ),)),


              SizedBox(
                height: height*0.025,
              ),
              Container(height: height*0.03,alignment: Alignment.center,
                width: width,
                //color: Colors.red,
                child: Text("06:30",style: TextStyle(color:Color(0xff5A4A42),fontSize: 19,fontFamily: "Poppins",fontStyle: FontStyle.normal,fontWeight: FontWeight.w600 ),),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                height: height * 0.033,
                width: width,
                //color: Colors.blue,
                child: Text(
                  "Wednesday,Dec 12",
                  style: GoogleFonts.poppins(textStyle:TextStyle(fontSize: 19, color: Color(0xff5A4A42))),
                ),
              ),
              SizedBox(
                height: height*0.012,
              ),
              Container(
                height: height * 0.16,
                width: width,
                //color: Colors.blue,
                child: Image.asset("assets/homepagemodule/Group 25.png",),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                //scolor: Colors.red,
                height: height*0.03,

                child: Row(children: [
                  Container(
                    width: width*0.17,
                  ),
                  Container(
                    //color: Colors.red,
                    child: Image.asset("assets/homepagemodule/locationicon.png"),
                  ),SizedBox(
                    width: width*0.015,
                  ),
                  Container(
                    child: Text("Location: Near Pandi Koil, Madurai", style: GoogleFonts.poppins(textStyle:TextStyle(fontSize: 14, color: Color(0xff5A4A42))),),
                  )
                ],),


                //color: Colors.orange,
              ),
              SizedBox(
                height: height*0.035,
              ),
              Container(
                height: height * 0.04,
                width: width,
// color: Colors.red,
                child: Row(
                  children: [
                    Container(
                      height: height * 0.05,
                      width: width * 0.15,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: height * 0.05,
                      width: width * 0.13,
//color:// Colors.blue,
                      child:Image.asset("assets/homepagemodule/anticlock.png"),
                    ),
                    SizedBox(
                      width: width * 0.17,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: height * 0.05,
                      width: width * 0.13,

//color: Colors.blue,
                      child:Image.asset("assets/homepagemodule/editedclockout.png",fit: BoxFit.fill,),
                    ),
                    SizedBox(
                      width: width * 0.17,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: height * 0.05,
                      width: width * 0.13,
//color: Colors.grey,
//color: Colors.blue,
                      child:Image.asset("assets/homepagemodule/clock.png"),
                    ),
                  ],
                ),
              ),
              Container(
                height: height * 0.03,
                width: width,
//color: Colors.red,
                child: Row(
                  children: [
                    Container(
                      height: height * 0.05,
                      width: width * 0.15,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: height * 0.05,
                      width: width * 0.13,
//color: Colors.blue,
                      child: Text("09:10", style: GoogleFonts.poppins(textStyle:TextStyle( color: Color(0xff5A4A42)),fontWeight: FontWeight.w600), ),
                    ),
                    SizedBox(
                      width: width * 0.17,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: height * 0.05,
                      width: width * 0.13,
//color: Colors.blue,
                      child: Text("09:10", style: GoogleFonts.poppins(textStyle:TextStyle( color: Color(0xff5A4A42)),fontWeight: FontWeight.w600),),
                    ),
                    SizedBox(
                      width: width * 0.17,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: height * 0.05,
                      width: width * 0.13,
//color: Colors.blue,
                      child: Text("09:10",style: GoogleFonts.poppins(textStyle:TextStyle( color: Color(0xff5A4A42)),fontWeight: FontWeight.w600),),
                    ),
                  ],
                ),
              ),
              Container(
                height: height * 0.03,
                width: width,
//color: Colors.red,
                child: Row(
                  children: [
                    Container(
                      height: height * 0.05,
                      width: width * 0.14,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: height * 0.05,
                      width: width * 0.15,
//color: Colors.blue,
                      child: Text("Clock In",style: GoogleFonts.poppins(textStyle:TextStyle( color: Color(0xff5A4A42))),),
                    ),
                    SizedBox(
                      width: width * 0.12,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: height * 0.05,
                      width: width * 0.20,
//color: Colors.blue,
                      child: Text("Clock Out",style: GoogleFonts.poppins(textStyle:TextStyle( color: Color(0xff5A4A42))),),
                    ),
                    SizedBox(
                      width: width * 0.10,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: height * 0.05,
                      width: width * 0.22,
//color: Colors.red,
//color: Colors.blue,
                      child: Text("Working Hrs",style: GoogleFonts.poppins(textStyle:TextStyle( color: Color(0xff5A4A42))),),
                    ),
                  ],
                ),
              ),








SizedBox(
  height: height*0.03,
),


              Container(

                child: Container(
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(begin: Alignment.topCenter,end: Alignment.bottomCenter,
                          colors: [
                            Color(0xff1B65BF), Color(0xff203DA3)
                          ]

                          ),
                            // color: Color(0xff1B67C1),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(60),
                                topRight: Radius.circular(60))),
                        child: GridviewContainer()
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}