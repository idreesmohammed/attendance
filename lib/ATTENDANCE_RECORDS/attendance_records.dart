

import 'package:attendanceapp/MATERIAL_REQUEST/material_request.dart';
//import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class AttendanceRecord extends StatefulWidget {
  @override
  _AttendanceRecordState createState() => _AttendanceRecordState();

}

class _AttendanceRecordState extends State<AttendanceRecord> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    bool newValue = false;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/commonbg/image_2021_09_20T10_29_18_891Z.png"),fit: BoxFit.fill),



          ),
          child: Column(children: [
            Container(
              height: height*0.06,
              width: width,
              //color: Colors.red,
              child: Row(children: [
                Container(
                  child: IconButton(onPressed: (){
                    Navigator.pop(context);

                  }, icon: Icon(Icons.arrow_back,color: Colors.white,size: 25,)),
                ),
                SizedBox(
                  width: width*0.03,
                ),
                Container(
                  child: Text("Attendance Record",
                    style: GoogleFonts.poppins(textStyle:TextStyle(fontSize: 20, color: Colors.white)),),
                ),

              ],),

            ),
            SizedBox(
              height: height*0.02,
            ),
            Container(
              height: height*0.13,
              width: width,
              //color:Colors.blue,
              child: Container(child: Row(
                children: [
                  Container(
                    width: width*0.11,
                  ),
                  Container(
                    //color: Colors.red,
                    height: height*0.11,width: width*0.2,
                    child: Image.asset("assets/homepagemodule/user (3)@2x.png"),
                  ),
                  SizedBox(
                    width: width*0.04,
                  ),

                  Container(
                    child: Column(
                      children: [
                        Container(
                          height: height*0.012,
                        ),
                        Container(height: height*0.05,
                          width: width*0.5,
                          //color: Colors.green,
                          alignment: Alignment.bottomLeft,
                          child: Text("Employee Name",

                            style: GoogleFonts.poppins(textStyle:TextStyle(fontSize: 16, color: Color(0xff5A4A42))),),
                        ),
                        Container(
                          height: height*0.05,
                          width: width*0.5,
                          alignment: Alignment.topLeft,
                          //color: Colors.grey,
                          child: Text("Designation",

                            style: GoogleFonts.poppins(textStyle:TextStyle(fontSize: 16, color: Color(0xff5A4A42))),),
                        ),
                      ],
                    ),
                  )
                ],
              ),),
            ),
            Container(
//color: Colors.red,
              height: height*0.08,
              width: width,
              child: Row(
                children: [
                  Container(
                    width: width*0.03,
//color: Colors.black,
                  ),
                  Container(decoration:

                    BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff263FB6).withOpacity(0.5),
                          blurRadius: 5,
                          offset: Offset(0.2, 0), // changes position of shadow
                        ),
                      ],

                    ),
                    width: width*0.45,
                    child: TextFormField(
                      readOnly: true,
                      decoration: InputDecoration(border: InputBorder.none,
                          suffixIcon: Container(
                            child: Image.asset("assets/homepagemodule/Icon awesome-calendar-alt.png"),
                          )
                      ),

                    ),

                  ),
                  SizedBox(
                    width: width*0.04,
                  ),
                  Container(decoration:

                  BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff263FB6).withOpacity(0.5),
                        blurRadius: 5,
                        offset: Offset(0.2, 0), // changes position of shadow
                      ),
                    ],

                  ),
                    width: width*0.45,
                    child: TextFormField(
                      readOnly: true,
                      decoration: InputDecoration(border: InputBorder.none,
                          suffixIcon: Container(
                            child: Image.asset("assets/homepagemodule/Icon awesome-calendar-alt.png"),
                          )
                      ),

                    ),

                  ),


                ],
              ),
            ),
            SizedBox(
              height: height*0.01,
            ),

            SizedBox(
              height: height*0.02,
            ),
            Container(decoration:
            BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color(0xff263FB6).withOpacity(0.5),
                  blurRadius: 5,
                  offset: Offset(0.2, 0), // changes position of shadow
                ),
              ],

            ),

              height: height*0.29,
              width: width*0.56,

//color: Colors.green,
              child: Column(children: [
                Row(
                  children: [
                    Container(

                      width: width*0.02,
                    ),
                    Container(width: width*0.07,

                      child: Radio( value: false,
                        onChanged: (newValue){
                          setState(() {

                          });
                        }, groupValue: true,
                      ),
                    ),
                    Container(
                      child: Text("Present",
                        style: GoogleFonts.poppins(textStyle:TextStyle(fontSize: 14.5,color: Color(0xff5A4A42))),),
                      //style: TextStyle(color: Color(0xff5A4A42)),),
                    ),
                    SizedBox(
                      width: width*0.045,
                    ),
                    Container(width: width*0.07,
                      child: Radio( value: false,
                        onChanged: (newValue){
                          setState(() {

                          });
                        }, groupValue: true,
                      ),
                    ),
                    Container(
                      child: Text("Absent",
                        style: GoogleFonts.poppins(textStyle:TextStyle(fontSize: 14.5,color: Color(0xff5A4A42))),),
                      //style: TextStyle(color: Color(0xff5A4A42)),),
                    ),

                  ],
                ),


                Container(
                  margin: EdgeInsets.only(top: 12),
                  height: height*0.17,
                  width: width*0.35,

//color: Colors.black,
                  child: Image.asset("assets/homepagemodule/Group 22.png"),
                ),

              ],) ,
            ),
            SizedBox(
              height: height*0.03,
            ),
            Container(


              height: height*0.3,
              width: width,
              //color: Colors.grey,
              child: Row(children: [

                Container(
                  width: width*0.22,
                ),


                Container(decoration:
                  BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff263FB6).withOpacity(0.5),
                        blurRadius: 5,
                        offset: Offset(0.2, 0), // changes position of shadow
                      ),
                    ],

                  ),

                  height: height*0.29,
                  width: width*0.56,

//color: Colors.green,
                  child: Column(children: [
                    Row(
                      children: [
                        Container(

                          width: width*0.02,
                        ),
                        Container(width: width*0.07,

                          child: Radio( value: false,
                            onChanged: (newValue){
                              setState(() {

                              });
                            }, groupValue: true,
                          ),
                        ),
                        Container(
                          child: Text("On Time",
                            style: GoogleFonts.poppins(textStyle:TextStyle(fontSize: 14.5,color: Color(0xff5A4A42))),),
                          //style: TextStyle(color: Color(0xff5A4A42)),),
                        ),
                        SizedBox(
                          width: width*0.02,
                        ),
                        Container(width: width*0.07,
                          child: Radio( value: false,
                            onChanged: (newValue){
                              setState(() {

                              });
                            }, groupValue: true,
                          ),
                        ),
                        Container(
                          child: Text("Late/Leave",
                            style: GoogleFonts.poppins(textStyle:TextStyle(fontSize: 14.5,color: Color(0xff5A4A42))),),
                          //style: TextStyle(color: Color(0xff5A4A42)),),
                        ),

                      ],
                    ),


                    Container(
                      margin: EdgeInsets.only(top: 12),
                      height: height*0.17,
                      width: width*0.35,

//color: Colors.black,
                      child: Image.asset("assets/homepagemodule/Group 22.png"),
                    ),

                  ],) ,
                ),



              ],),

            ),

          ],),
        ),
      ),
    );
  }
}
