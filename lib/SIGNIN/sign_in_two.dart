
import 'package:attendanceapp/HOMEPAGES_MODULES/MyHomePage.dart';
import 'package:flutter/material.dart';

class SignInTwo extends StatefulWidget {
  @override
  _SignInTwoState createState() => _SignInTwoState();
}

class _SignInTwoState extends State<SignInTwo> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var bottombar = kBottomNavigationBarHeight;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      "assets/background/signin/withoutclockbackground.png"),
                  fit: BoxFit.fill)),
          // color: Colors.blue,
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  height: height,
                  width: width,
                  // color: Colors.red,
                ),
              ),
              Positioned(
                top: height * 0.15,
                left: width * 0.18,
                child: Container(
                  height: height * 0.30,
                  width: width * 0.65,
                  // color: Colors.red,
                  child: Image.asset(
                    "assets/signintwo/clockwing.png",
                  ),
                ),
              ),
              Positioned(
                top: height * 0.42,
                left: width * 0.02,
                child: Container(
                  height: height * 0.05,
                  width: width,
                  // color: Colors.pink,
                  child: Center(
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                          fontSize: 22,
                          color: Color(0xff5A4A42),
                          fontFamily: "Poppins",
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: height * 0.49,
                left: width * 0.13,
                child: Container(
                  height: height * 0.08,
                  width: width * 0.8,
                  // color: Colors.green,
                  child: Card(
                    // elevation: 6,
                    // shadowColor: Color(0xff1B66BF),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 5,
                                color: Color(0xff1B66BF),
                                offset: Offset(0.3, 0))
                          ]),
                      height: height * 0.1,
                      width: width * 0.6,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "    Employee Id or Mobile number",
                          hintStyle: TextStyle(
                              fontFamily: "Poppins",
                              fontStyle: FontStyle.normal),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: height * 0.68,
                left: width * 0.22,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage()));

                  },
                  child: Container(
                    height: (height * 0.085),
                    width: width * 0.6,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: <Color>[
                              Color(0xff157DC5),
                              Color(0xff2A34B2)
                            ])),
                    child: Center(
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontFamily: "Poppins",
                            fontStyle: FontStyle.normal),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
