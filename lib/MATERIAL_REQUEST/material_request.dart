
import 'package:attendanceapp/EXPENSES/homepage_of_expenses.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class MaterialRequest extends StatefulWidget {
  @override
  _MaterialRequestState createState() => _MaterialRequestState();
}

class _MaterialRequestState extends State<MaterialRequest> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var date;
    Future datePicking() async {

      var today = DateTime.now();
      var requestStartDate;

      date = await showDatePicker(
          context: context,
          initialDate: today,
          firstDate: today,
          lastDate: DateTime(today.year + 5));
      // d = DateTime.parse(myFormat.format(date!));
      // var dateTime1 = DateFormat('d/M/yyyy').parse(requestStartDate.toString());
      if (date == null) return;
      if (date != null) {
        print(date);

      }
    }
    return Scaffold(
      resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Container(
            //color: Colors.grey,
            width: width,
            height: height,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/commonbg/commonbg.png"),fit: BoxFit.fill),


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
                    width: width*0.06,
                  ),
                  Container(
                    child: Text("Material Request",
                      style: GoogleFonts.poppins(textStyle:TextStyle(fontSize: 20, color: Colors.white)),),
                  )
                ],),

              ),


              Container(
                height: height*0.05,
              ),
              customContainer(height, width,

                  hint: "Material Name",

              ),
              Container(
                height: height*0.04,
              ),

              customContainer(height, width,
                  hint: "Quantity"
              ),
              Container(
                height: height*0.04,
              ),

              customContainer(height, width,
                  hint: "Request Details"
              ),
              Container(
                height: height*0.04,
              ),
              Container(
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
                height: height*0.08,
                width: width*0.85,
                child: TextFormField(
                  readOnly: true,
                  decoration: InputDecoration(

                      suffixIcon: Container(
                        child: InkWell

                          (
                           onTap: (){


                           },
                            child: Image.asset("assets/homepagemodule/Icon awesome-calendar-alt.png")),
                      ),

                      border: OutlineInputBorder(
                          borderSide: BorderSide.none

                      ),
                      hintStyle:  GoogleFonts.poppins(textStyle:TextStyle( color:  Colors.grey,fontSize: 15)),
                      hintText: ("Select Date")
                  ),
                ),
              ),
              Container(
                height: height*0.02,
              ),
              Container(
                height: height*0.03,
                width: width*0.85,
                child: Container(alignment: Alignment.centerLeft,

                  child: Text("Documents",
                    style: GoogleFonts.poppins(textStyle:TextStyle(fontSize: 15,fontWeight: FontWeight.w700 )),),
                ),


              ),
              Container(
                height: height*0.01,
              ),
              InkWell(onTap: (){},
                child: Container(

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

                  height: height*0.07,
                  width: width*0.85,
                  child: Center(
                    child: Text("Attach File",
                      style:  GoogleFonts.poppins(textStyle:TextStyle( color:  Colors.grey,fontSize: 15)),),
                  ),

                ),
              ),
              Container(
                width: width,
                //color: Colors.red,
                height: height*0.195,
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
        )
    );
  }

   customContainer(double height, double width,{hint,}) {
    return Container(

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
      height: height*0.08,
      width: width*0.85,
      child:
      TextFormField(
        decoration: InputDecoration(

            border: OutlineInputBorder(
                borderSide: BorderSide.none,

            ),
              hintStyle:  GoogleFonts.poppins(textStyle:TextStyle( color:  Colors.grey,fontSize: 15,)),




            hintText:hint
        ),
      ),);
  }



}


