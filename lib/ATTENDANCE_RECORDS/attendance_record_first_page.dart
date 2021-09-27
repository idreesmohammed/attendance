//import 'package:attendanceapp/ATTENDANCE_RECORDS/list_months.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'attendance_records.dart';
class
FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  List months = [
    "Jan","Feb", "Mar", "Apr", "May","Jun","Jul","Aug","Sep","Oct","Nov", "Dec"
  ];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body:SafeArea(
        child: Container(
          height: height,
          width: width,

          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/commonbg/image_2021_09_20T10_29_18_891Z.png"),fit: BoxFit.fill),



          ),
          child: Column(
            children: [
              Container(
                height: height*0.09,
                width: width,
                //color: Colors.red,
                child: Row(children: [
                  Container(alignment: Alignment.topLeft,
                    child: IconButton(onPressed: (){
                      Navigator.pop(context);
                    }, icon: Icon(Icons.arrow_back,color: Colors.white,size: 25,)),
                  ),
                  SizedBox(
                    width: width*0.05,
                  ),
                  Container(padding: EdgeInsets.only(top: 5),
                    height: height*0.08,


                    alignment: Alignment.topRight,
                    child: Text("Attendance Record",

                      style:
                      GoogleFonts.poppins(textStyle:TextStyle(fontSize: 20, color: Colors.white)),),
                  ),
                    SizedBox(
                      width: width*0.21,
                    ),

                    Container(alignment: Alignment.bottomRight,
                      width: width*0.1,
                     height: height*0.08,
                     //color: Colors.red,
                     child:
                     InkWell(onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>AttendanceRecord()));
                     },

                       child: Image.asset("assets/attendancemodule/Icon awesome-file-alt.png"),
                   ),
                 )
                ],),

              ),
              SizedBox(
                height: height*0.02,

              ),
              Container(
                height: height*0.23,
                width: width*0.90,
                decoration: BoxDecoration(
                  //color: Colors.blue,
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/attendancemodule/image_2021_09_22T06_11_23_441Z.png"),fit: BoxFit.fill),


                ),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            //color: Colors.red,
                            height: height*0.14,
                            width: width*0.48,
                            alignment: Alignment.bottomRight,
                            child: Text("10:43",
                              style: GoogleFonts.poppins(textStyle:TextStyle(fontSize: 22,fontWeight: FontWeight.w600, color: Color(0xff160101))),),),
                         SizedBox(
                           width: width*0.013,
                         ),
                          Container(
                            alignment: Alignment.bottomLeft,
                            height: height*0.137,
                            width: width*0.40,
                            //color: Colors.green,
                            child: Text("AM",
                            style: GoogleFonts.poppins(textStyle:TextStyle(fontSize: 20,fontWeight: FontWeight.w500, color: Color(0xff160101))),
                          ),)
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height*0.025,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: height*0.03,
                      width: width*0.85,
                      //color: Colors.grey,
                      child: Text("Wednesday | 15 sep 2021",
                        style: GoogleFonts.poppins(textStyle:TextStyle(fontSize: 16,color: Color(0xff160101))),
                      ),
                    ),


                  ],
                ),
              ),
              SizedBox(
                height: height*0.03,
              ),
              Container( height: height*0.09,

                width: width,

                //color: Colors.red,
                child: Row(
                  children: [
                    Container(height: height*0.09,
                      width:width*0.1,
                      //color: Colors.green,
                      child: IconButton(
                        icon: Icon(Icons.arrow_back,color: Color(0xff000000),size: 27,), onPressed: () {  },),
                    ),
                    Container(
                      width: width*0.80,
                      height: height*0.09,
                      //color: Colors.grey,

                      child: ListView.builder(scrollDirection: Axis.horizontal,
                          itemCount: 12,itemBuilder: (BuildContext context, int index){
                        return Center(
                          child: Container(alignment: Alignment.center,


                            height: height*0.03,width: width*0.12,
                            child: Text(months[index],     style:
                            GoogleFonts.poppins(textStyle:TextStyle(fontSize: 14,
                                color: Color(0xff5A4A42))

                            ),),
                          ),

                        );
                      }),

                    ),
                    Container(
                        height: height*0.09,
                        width:width*0.1,
                      child:
                      IconButton(
                        icon: Icon(Icons.arrow_forward_sharp,size: 27,color: Color(0xff000000),), onPressed: () {  },),
                    ),


                  ],
                ),
              ),
              Container(
                height: height*0.5,
                width: width*0.99,
                //color: Colors.red,
                child: ListView.builder(itemCount: 7,itemBuilder: (context,index){
                  return Card(
                    child: Container(
                      height: height*0.15,
                      width: width*0.9,
                      // color: Colors.green,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [

                            BoxShadow(
                              color: (Color(0xff22329C)).withOpacity(0.5),
                              blurRadius: 7,
                              //spreadRadius: 1.5
                              offset: Offset(0.2, 0), // changes position of shadow
                            ),
                          ],

                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(7),
                              bottomLeft: Radius.circular(7),
                              bottomRight: Radius.circular(7),
                              topRight: Radius.circular(7))),
                      child: Row(
                        children: [
                          Container(
                            width: width*0.04,
                          ),
                          Container(
                            height: height*0.089,
                            width: width*0.2,
                            decoration: BoxDecoration(

                                color: Color(0xff22329C),borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(6),
                                bottomLeft: Radius.circular(6),
                                bottomRight: Radius.circular(6),
                                topRight: Radius.circular(6))),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: height*0.02,
                                ),
                                Container(
                                  child: Text("12",
                                    style:
                                    GoogleFonts.poppins(textStyle:TextStyle(fontSize: 17,
                                        color: Colors.white)),),
                                ),
                                Container(
                                  child: Text("Sun",
                                    style:
                                    GoogleFonts.poppins(textStyle:TextStyle(fontSize: 18,
                                        color: Colors.white)),),
                                ),
                              ],
                            ),

                          ),
                          Container(
                            width: width*0.05,
                          ),
                          Container(
                            height: height*0.12,
                            width: width*0.66,
                            // color: Colors.grey,
                            child: Column(
                              children: [
                                Container(
                                  height: height*0.04,
                                  width: width*0.65,
                                  // color: Colors.yellow,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: width*0.05,
                                      ),
                                      Container(
                                        child: Text("Punch In",
                                          style:
                                          GoogleFonts.poppins(textStyle:TextStyle(fontSize: 17,
                                              color: Color(0xff22329C))),),
                                      ),
                                      SizedBox(
                                        width: width*0.12,
                                      ),
                                      Container(child:
                                      Text("Punch Out",
                                        style:
                                        GoogleFonts.poppins(textStyle:TextStyle(fontSize: 17, color: Color(0xffFF0A0A))),)
                                      ),
                                    ],
                                  ),


                                ),
                                Container(
                                  height: height*0.04,
                                  width: width*0.65,
                                  // color: Colors.greenAccent,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: width*0.07,
                                      ),
                                      Container(
                                        child: Text("6:22 PM",
                                          style:
                                          GoogleFonts.poppins(textStyle:TextStyle(fontSize: 14, color: Color(0xff5A4A42))),
                                        ),
                                      ),
                                      SizedBox(
                                        width: width*0.21,
                                      ),
                                      Container(child:
                                      Text("9:22 PM",  style:
                                      GoogleFonts.poppins(textStyle:TextStyle(fontSize: 14, color:  Color(0xff5A4A42))),)
                                      ),
                                    ],
                                  ),

                                ),
                                Container(
                                  height: height*0.04,
                                  width: width*0.65,
                                  // color: Colors.blue,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: width*0.05,
                                      ),

                                      Container(alignment: Alignment.center,
                                        child: Text("PandiKoil, Madurai TN, India 625020",
                                          style:
                                          GoogleFonts.poppins(textStyle:TextStyle(fontSize: 13, color: Color(0xff5A4A42))),),
                                      ),

                                    ],
                                  ),

                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
              )

            ],
          ),
        ),
      ),
    );
  }
}
