import 'package:attendanceapp/EXPENSES/petrolexpenses/PETROLTABBAR/PetorTabBar.dart';
import 'package:attendanceapp/EXPENSES/petrolexpenses/Petrol%20Expenses.dart';
import 'package:attendanceapp/TRAVELEXPENSES/travel_expenses.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:select_form_field/select_form_field.dart';


import 'food_expense/food.dart';
class ExpensesHomePage extends StatefulWidget {
  @override
  _ExpensesHomePageState createState() => _ExpensesHomePageState();
}

class _ExpensesHomePageState extends State<ExpensesHomePage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(child:
    Scaffold(
        body:Container(height: height,width: width,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/commonbg/commonbg.png"),fit: BoxFit.fill),


          ),
          child: Column(
            children: [
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
                    width: width*0.06,
                  ),
                  Container(
                    child: Text("Expenses",
                      style: GoogleFonts.poppins(textStyle:TextStyle(fontSize: 20, color: Colors.white)),),
                  )
                ],),

              ),
              Container(
                height: height*0.06,
                width: width,
              ),
              InkWell(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>FoodExpenses()));
              },
                child: Container(
                    height: height*0.15,
                    width: width*0.85,
                    //color: Colors.green,
                    decoration: BoxDecoration(

                        color: Color(0xff2543B7),borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(6),
                        bottomLeft: Radius.circular(6),
                        bottomRight: Radius.circular(6),
                        topRight: Radius.circular(6))),
                    child:Row(children: [
                      Container(
                        height: height*0.15,
                        width: width*0.024,
                      ),

                      Container(height: height*0.13,
                        width: width*0.15,
                        child: Text("Food", style: GoogleFonts.poppins(textStyle:TextStyle(fontSize: 19, color: Colors.white)),),
                      ),
                      SizedBox(
                        height: height*0.15,width: width*0.22,
                      ),
                      Container(height: height*0.15,
                        width: width*0.25,
                        //color: Colors.red,
                        child: Image.asset("assets/expenses/salad.png"),
                      ),
                      Container(height: height*0.11,alignment: Alignment.topRight,
                          width: width*0.19,
                          //color: Colors.red,
                          child:Image.asset("assets/expenses/Icon ionic-ios-arrow-forward.png")
                      ),
                    ],)

                ),
              ),
              SizedBox(
                height: height*0.07,
              ),
              InkWell(onTap: (){

              },
                child: Container(
                    height: height*0.15,
                    width: width*0.85,
                    //color: Colors.green,
                    decoration: BoxDecoration(

                        color: Color(0xff2543B7),borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(6),
                        bottomLeft: Radius.circular(6),
                        bottomRight: Radius.circular(6),
                        topRight: Radius.circular(6))),
                    child:Row(children: [
                      Container(
                        height: height*0.15,
                        width: width*0.024,
                      ),

                      Container(height: height*0.13,
                        width: width*0.15,
                        child: Text("Petrol",
                          style: GoogleFonts.poppins(textStyle:TextStyle(fontSize: 19, color: Colors.white)),),
                      ),
                      SizedBox(
                        height: height*0.15,width: width*0.22,
                      ),
                      Container(height: height*0.15,
                        width: width*0.25,
                        //color: Colors.red,
                        child: Image.asset("assets/expenses/petrol-station.png"),
                      ),
                      Container(height: height*0.11,alignment: Alignment.topRight,
                          width: width*0.19,
                          //color: Colors.red,
                          child:Image.asset("assets/expenses/Icon ionic-ios-arrow-forward.png")
                      ),
                    ],)

                ),
              ),
              SizedBox(
                height: height*0.07,
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>TravelExpenses()));
                },
                child: Container(
                    height: height*0.15,
                    width: width*0.85,
                    //color: Colors.green,
                    decoration: BoxDecoration(

                        color: Color(0xff2543B7),borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(6),
                        bottomLeft: Radius.circular(6),
                        bottomRight: Radius.circular(6),
                        topRight: Radius.circular(6))),
                    child:Row(children: [
                      Container(
                        height: height*0.15,
                        width: width*0.021,
                      ),

                      Container(height: height*0.13,
                        //color: Colors.red,
                        width: width*0.17,
                        child: Text("Travel",
                          style: GoogleFonts.poppins(textStyle:TextStyle(fontSize: 19, color: Colors.white)),),
                      ),
                      SizedBox(
                        height: height*0.15,width: width*0.20,
                      ),
                      Container(height: height*0.15,
                        width: width*0.25,
                        //color: Colors.red,
                        child: Image.asset("assets/expenses/destination.png"),
                      ),
                      Container(height: height*0.11,alignment: Alignment.topRight,
                          width: width*0.19,
                          //color: Colors.red,
                          child:Image.asset("assets/expenses/Icon ionic-ios-arrow-forward.png")
                      ),
                    ],)

                ),
              )

            ],
          ),




        )

    ));
  }


}
