
import 'package:flutter/material.dart';

class Complaints extends StatefulWidget {
  @override
  _ComplaintsState createState() => _ComplaintsState();
}

class _ComplaintsState extends State<Complaints> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/background/background.png"),
                  fit: BoxFit.fill)),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: height * 0.21,
                    width: width,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 30,
                      )),
                  Positioned(
                    top: height * 0.01,
                    left: width * 0.25,
                    child: Text(
                      "Complaints",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          fontStyle: FontStyle.normal),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: width * 0.04,
                    child: complaintCoustomTextform(
                      height: height * 0.07,
                      width: width * 0.9,
                      hinttext: "  Subject",
                    ),
                  )
                ],
              ),
              SizedBox(
                height: height * 0.05,
              ),
              complaintCoustomTextform(
                  height: height * 0.2,
                  width: width * 0.9,
                  hinttext: "  Description")
            ],
          ),
        ),
        bottomSheet: Container(
          height: height * 0.1,
          width: width,
          child: Center(
            child: Container(
              height: height * 0.08,
              width: width * 0.9,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Color(0xff263FB6),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12
                        ))),
                child: Text(
                  "SUBMIT",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontSize: 18,fontWeight: FontWeight.w500
                      ),
                ),
                onPressed: () {},
              ),
            ),
          ),
        ),
      ),
    );
  }

  Container complaintCoustomTextform({height, width, hinttext}) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: Color(0xffF6F6F6),
          borderRadius: BorderRadius.circular(7),
          boxShadow: [
            BoxShadow(
                blurRadius: 5,

                offset: Offset(2, 0),
                color: Colors.grey)
          ]),
      child: TextFormField(
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hinttext,
            hintStyle: TextStyle(
                color: Color(0xffD1CDCC),
                fontSize: 18,
                fontFamily: 'Poppins',
                fontStyle: FontStyle.normal)),
      ),
    );
  }
}
