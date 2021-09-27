
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:select_form_field/select_form_field.dart';

class EquipmentEntryForm extends StatefulWidget {
  const EquipmentEntryForm({Key? key}) : super(key: key);

  @override
  _EquipmentEntryFormState createState() => _EquipmentEntryFormState();
}

class _EquipmentEntryFormState extends State<EquipmentEntryForm> {
  final List<Map<String, dynamic>> selectData = [
    {
      "Value": "a",
      "label": "a",
    },
    {
      "Value": "b",
      "label": "b",
    },
    {
      "Value": "c",
      "label": "c",
    },
  ];
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
                  image: AssetImage('assets/background/background.png'),
                  fit: BoxFit.fill)),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: height * 0.24,
                    width: width,
                    // color: Colors.purple,
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
                      top: 7,
                      left: 75,
                      child: Text(
                        "Equipment Entry Form",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontFamily: "Poppins",
                            fontStyle: FontStyle.normal),
                      )),
                  Positioned(
                      top: 100,
                      left: 25,
                      child: Card(
                        child: Container(
                          height: height * 0.08,
                          width: width * 0.85,
                          color: Color(0xffF1F1F1),
                          child: SelectFormField(
                            // decoration: InputDecoration(
                            //   border: InputBorder.none,
                            // ),
                            decoration: InputDecoration(


                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none

                                ),
                                hintStyle: GoogleFonts.poppins(textStyle:TextStyle( color:  Colors.grey)),
                                hintText: (" Work Assigned")
                            ),


                            // hintStyle: (TextStyle(color: Colors.grey)),
                            // style: TextStyle(
                            //     color: Colors.grey,
                            //     fontSize: 15,
                            //     fontFamily: "Poppins",
                            //     fontStyle: FontStyle.normal),
                            type: SelectFormFieldType.dropdown,
                            items: selectData,
                          ),
                        ),
                      ))
                ],
              ),
              // SizedBox(
              //   height: height * 0.0,
              // ),
              cardTextForm(
                  height: height * 0.07,
                  width: width * 0.85,
                  hintText: " Equippment Name",
                  imageIcon: Image.asset(
                    "assets/EQUIPMENTENTRY/Icon awesome-clock.png",
                    color: Color(0xffF1F1F1),
                  )),
              SizedBox(
                height: height * 0.02,
              ),
              cardTextForm(
                  height: height * 0.07,
                  width: width * 0.85,
                  hintText: " Number of Quantity",
                  imageIcon: Image.asset(
                      "assets/EQUIPMENTENTRY/Icon awesome-clock.png",
                      color: Color(0xffF1F1F1))),
              SizedBox(
                height: height * 0.02,
              ),
              Stack(
                children: [
                  Container(
                    height: height * 0.1,
                    width: width,
                  ),
                  Positioned(
                      top: 5,
                      left: 22,
                      child: cardTextForm(
                          height: height * 0.07,
                          width: (width * 0.85) / 2.1,
                          hintText: " Take in Time",
                          imageIcon: Image.asset(
                              "assets/EQUIPMENTENTRY/Icon awesome-calendar-alt.png"))),
                  Positioned(
                      top: 5,
                      right: 22,
                      child: cardTextForm(
                          height: height * 0.07,
                          width: (width * 0.85) / 2.1,
                          hintText: " Take out Time",
                          imageIcon: Image.asset(
                              "assets/EQUIPMENTENTRY/Icon awesome-calendar-alt.png"))),
                ],
              ),
              SizedBox(height: height * 0.03),
              // assets/EQUIPMENTENTRY/Icon awesome-calendar-alt.png
              Stack(
                children: [
                  Container(
                    height: height * 0.1,
                    width: width,
                  ),
                  Positioned(
                      top: 5,
                      left: 22,
                      child: cardTextForm(
                          height: height * 0.07,
                          width: (width * 0.85) / 2.1,
                          hintText: " Take in Time",
                          imageIcon: Image.asset(
                              "assets/EQUIPMENTENTRY/Icon awesome-clock.png"))),
                  Positioned(
                      top: 5,
                      right: 22,
                      child: cardTextForm(
                          height: height * 0.07,
                          width: (width * 0.85) / 2.1,
                          hintText: " Take out Time",
                          imageIcon: Image.asset(
                              "assets/EQUIPMENTENTRY/Icon awesome-clock.png"))),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomSheet:Stack(
        children: [
        Container(
        height: height * 0.15,
        width: width,
          color: Colors.white,
        ),
          Positioned(
            bottom: 20,
            left: width*0.05,
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
        ],
      ),



      );

  }

   cardTextForm({height, width, hintText, imageIcon}) {
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
            suffixIcon: Container(
              child: imageIcon,
            ),
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 12,
                fontFamily: "Poppins",
                fontStyle: FontStyle.normal)),
      ),
    );
  }
}
