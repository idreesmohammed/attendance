import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:select_form_field/select_form_field.dart';
class FoodExpenses extends StatefulWidget {
  @override
  _FoodExpensesState createState() => _FoodExpensesState();
}

class _FoodExpensesState extends State<FoodExpenses> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/commonbg/commonbg.png"),fit: BoxFit.fill),



          ),
          height: height,
          width: width,
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
                  width: width*0.06,
                ),
                Container(
                  child: Text("Food Expenses", style: GoogleFonts.poppins(textStyle:TextStyle(fontSize: 20, color: Colors.white)),),
                ),

              ],),

            ),
            SizedBox(
              height: height*0.06,
            ),
            Container(height: height*0.08,width: width*0.85,
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
                  ),
                ],


              ),
            child: TextFormField(
              decoration: InputDecoration(
                  suffixIcon: Container(
                    child: Image.asset("assets/homepagemodule/Icon awesome-calendar-alt.png"),
                  ),

                  border: OutlineInputBorder(
                      borderSide: BorderSide.none

                  ),
                  hintStyle:  GoogleFonts.poppins(textStyle:TextStyle( color:  Colors.grey,fontSize: 15)),
                  hintText: ("Select Date")
              ),
            ),
            ),
            SizedBox(
              height: height*0.03,
            ),
            Container(
              height: height*0.08,
              width: width*0.85,
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
                  ),
                ],


              ),

              child: SelectFormField(
                decoration: InputDecoration(


                    border: OutlineInputBorder(
                        borderSide: BorderSide.none

                    ),
                    hintStyle:  GoogleFonts.poppins(textStyle:TextStyle( color:  Colors.grey,fontSize: 15)),
                    hintText: ("Food Type")
                ),
              ),),
            SizedBox(
              height: height*0.03,
            ),

            Container(
                height: height*0.08,
                width: width*0.85,
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
                    ),
                  ],


                ),
                child: TextButton(onPressed: (){}, child:
                Center(
                  child: Text("Upload Food Expense Bill",style:
                    GoogleFonts.poppins(textStyle:TextStyle( color:  Colors.grey)),
                  ),
                ))),
            SizedBox(
              height: height*0.03,
            ),
            Container(height: height*0.08,width: width*0.85,

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
                  ),
                ],


              ),
              child: TextFormField(
                decoration: InputDecoration(


                    border: OutlineInputBorder(
                        borderSide: BorderSide.none

                    ),
                    hintStyle:  GoogleFonts.poppins(textStyle:TextStyle( color:  Colors.grey,fontSize: 15)),
                    hintText: ("Amount")
                ),
              ),
            ),Container(
              height: height*0.34,
              //color: Colors.red,
            ),
            InkWell(onTap: (){


            },
              child: Container(
                decoration:
                BoxDecoration(
                    color: Color(0xff2446B8),

                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                        topRight: Radius.circular(12))
                ),

                height: height*0.074,
                width: width*0.85,
                child: Center(
                  child: Text("SUBMIT",
                    style:  GoogleFonts.poppins(textStyle:TextStyle( color:  Colors.white,fontSize: 18),fontWeight: FontWeight.w500),),
                ),

              ),
            ),

          ],),
        ),
      ),
    );
  }
}
