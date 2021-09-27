import 'package:attendanceapp/EXPENSES/petrolexpenses/PETROLTABBAR/PetorTabBar.dart';
import 'package:flutter/material.dart';

class PetrolExpenses extends StatefulWidget {
  @override
  _PetrolExpensesState createState() => _PetrolExpensesState();
}

class _PetrolExpensesState extends State<PetrolExpenses> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/background/background.png"),
                  fit: BoxFit.fill)),
          // color: Colors.blue,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: height * 0.75,
                    width: width,
                    // color: Colors.green,
                  ),
                  Container(
                    height: height * 0.25,
                    width: width,
                    // color: Colors.pink,
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
                    top: 9,
                    left: 95,
                    child: Text(
                      "Petrol Expenses",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  Positioned(
                    top: 85,
                    left: 50,
                    child: Container(
                      child: Center(
                        child: Text(
                          "Wednesday, September 15th",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: "Poppins",
                              fontStyle: FontStyle.normal),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 120,
                    left: 130,
                    child: Container(
                        child: Center(
                            child: Text(
                      "05:17 PM",
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: "Poppins",
                          fontStyle: FontStyle.normal),
                    ))),
                  ),
                  Positioned(
                    top: 147,
                    left: 130,
                    child: Container(
                        child: Center(
                            child: Text(
                      "Tracking...",
                      style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff2641B6),
                          fontFamily: "Poppins",
                          fontStyle: FontStyle.normal),
                    ))),
                  ),
                  Positioned(
                    top: 200,
                    left: 15,
                    child: Container(
                      height: height * 0.30,
                      width: width * 0.85,
                      // color: Colors.blue,
                      child: Image.asset(
                        "assets/petrol/scooter.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 75,
                    left: 90,
                    child: Container(
                      child: Text(
                        "Distance :",
                        style: TextStyle(
                            color: Color(0xff000000),
                            fontSize: 20,
                            fontFamily: "Poppins",
                            fontStyle: FontStyle.normal),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 75,
                    left: 185,
                    child: Container(
                      child: Text(
                        " 0:00 km",
                        style: TextStyle(
                            color: Color(0xff000000),
                            fontSize: 20,
                            fontFamily: "Poppins",
                            fontStyle: FontStyle.normal),
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    height: height * 0.21,
                    width: width,
                    // color: Colors.amber,
                  ),
                  Positioned(
                    top: (height * 0.21) * 0.4,
                    left: width * 0.1,
                    child: custombottombutton(height, width,
                        text: "Start", color: Color(0xff07C874), ontap: () {}),
                  ),
                  Positioned(
                    left: width * 0.55,
                    top: (height * 0.21) * 0.4,
                    child: custombottombutton(height, width,
                        text: "Complete", color: Color(0xff263FB6), ontap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext contex) {
                            return AlertDialog(
                                actions: [
                                  custombottombutton(height, width,
                                      text: "Done",
                                      color: Color(0xff263FB6),
                                      ontap: () {

                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>PetrolTabBar()));
                                      }),
                                ],
                                content: Card(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: " Travel Purpose",
                                        hintStyle: TextStyle(
                                            fontFamily: "Poppins",
                                            fontStyle: FontStyle.normal)),
                                  ),
                                ));
                          });
                    }),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Container custombottombutton(double height, double width,
      {text, ontap, color}) {
    return Container(
        height: height * 0.08,
        width: width * 0.35,
        // color: Colors.red,
        child: ElevatedButton(
          child: Text(
            text,
            style: TextStyle(
                fontSize: 18,
                fontFamily: "Poppins",
                fontStyle: FontStyle.normal),
          ),
          onPressed: ontap,
          style: ElevatedButton.styleFrom(
            primary: color,
            shape: StadiumBorder(),
          ),
        ));
  }
}
