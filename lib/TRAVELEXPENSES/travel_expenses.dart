import 'package:flutter/material.dart';

class TravelExpenses extends StatefulWidget {
  @override
  _TravelExpensesState createState() => _TravelExpensesState();
}

class _TravelExpensesState extends State<TravelExpenses> {
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
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TravelExpenses()));
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 30,
                      )),
                  Positioned(
                    top: height * 0.01,
                    left: width * 0.25,
                    child: Text(
                      "Travel Expense",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          fontStyle: FontStyle.normal),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: width * 0.05,
                    child: travelExpensesCustomTextForm(
                      height: height * 0.07,
                      width: width * 0.9,
                      hinttext: "  From Location",
                    ),
                  )
                ],
              ),
              SizedBox(
                height: height * 0.05,
              ),
              travelExpensesCustomTextForm(
                  height: height * 0.07,
                  width: width * 0.9,
                  hinttext: "  To Location"),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                height: height * 0.03,
                width: width * 0.9,
                // color: Colors.blue,
                child: Text(
                  "Documents",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Container(
                height: height * 0.08,
                width: width * 0.9,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xffF1F1F1),
                      shape: new RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7))),
                  child: Text(
                    "Attach File",
                    style: TextStyle(
                      color: Color(0xff5A4A42),
                      fontFamily: 'Poppins',
                      fontStyle: FontStyle.normal,
                      fontSize: 13,
                    ),
                  ),
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
        bottomSheet: Container(
          height: height * 0.1,
          width: width,
          color: Colors.white,
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

  Container travelExpensesCustomTextForm({height, width, hinttext}) {
    return Container(
      height: height,
      width: width,
        decoration: BoxDecoration(
        // color: Color(0xffF1F1F1),


        borderRadius: BorderRadius.only(
        topLeft: Radius.circular(5),
    bottomLeft: Radius.circular(5),
    bottomRight: Radius.circular(5),
    topRight: Radius.circular(5)),

    color: Color(0xffF1F1F1),
    boxShadow: [
    BoxShadow(
    color: (Colors.grey).withOpacity(0.5),
    blurRadius: 5,
    offset: Offset(0.2, 0), // changes position of shadow
    )]),
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
