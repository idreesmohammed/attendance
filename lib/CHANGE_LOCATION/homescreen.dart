import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
class ChangeLocation extends StatefulWidget {
  @override
  _ChangeLocationState createState() => _ChangeLocationState();
  var date;

}

class _ChangeLocationState extends State<ChangeLocation> {
var value;
bool isClick = false;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    bool isClick = false;
    bool value =true;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          height: height,
          width: width,
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
                    child: Text("Change Location",
                      style: GoogleFonts.poppins(textStyle:TextStyle(fontSize: 20, color: Colors.white)),),
                  )
                ],),

              ),
              SizedBox(
                height: height*0.08,
                width: width,
              ),
              customContainer(height,width,hint: "Current Location"),
              SizedBox(
                height: height*0.02,
              ),
              customContainer(height,width,hint: "Change Location"),

              Container(
                height: height*0.08,
                width: width*0.95,
                //color: Colors.red,
                child: Row(children: [
                  Checkbox(value: isClick, onChanged: (value){
                    setState(() {
                      isClick = value!;
                    });

                  }),
                  Text("Send Request",
                    style: GoogleFonts.poppins
                      (textStyle:TextStyle(fontSize: 17, color: Colors.grey
                    )),),
                ],)
              ),
              Container(
                height: height*0.37,
                width: width,
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






            ],


          ),
        ),
      ),
    );
  }
  customContainer(double height, double width,{hint,}) {
    return Container(

      decoration: BoxDecoration(

          color: Color(0xffF1F1F1),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(9),
              bottomLeft: Radius.circular(9),
              bottomRight: Radius.circular(9),
              topRight: Radius.circular(9))
      ),
      height: height*0.12,
      width: width*0.90,
      child:
      TextFormField(
        decoration: InputDecoration(

            border: OutlineInputBorder(
              borderSide: BorderSide.none,

            ),
            hintStyle:  GoogleFonts.poppins(textStyle:TextStyle( color:  Colors.grey,fontSize: 15)),




            hintText:hint
        ),
      ),);
  }

}

