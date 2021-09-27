
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'List_of_module.dart';
import 'images_modules_assets.dart';
import 'modules_list_view.dart';
class GridviewContainer extends StatefulWidget {
  @override
  _GridviewContainerState createState() => _GridviewContainerState();
}

class _GridviewContainerState extends State<GridviewContainer> {

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    // double barApp = AppBar().preferredSize.height;
    // double statusBarHeight = MediaQuery.of(context).padding.top;
    // double bottomPadding = MediaQuery.of(context).padding.bottom;
    return  Container(padding: EdgeInsets.all(18),
    height: height * 0.41,
    width: width,

    child: GridView.builder(
    itemCount: 7,
    gridDelegate:
    SliverGridDelegateWithFixedCrossAxisCount(
    mainAxisSpacing: 0,
    childAspectRatio: 1,
    crossAxisSpacing: 15, crossAxisCount: 2
    ),
    itemBuilder: (BuildContext ctx, index) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>
          pages[index]
        ));
      },
      child: Container(padding: EdgeInsets.only(top: 37),

        //color: Colors.red,


      child: Column(
      children: [
      Container(decoration: BoxDecoration(

      color: Colors.white,borderRadius: BorderRadius.only(
      topLeft: Radius.circular(5),
      bottomLeft: Radius.circular(5),
      bottomRight: Radius.circular(5),
      topRight: Radius.circular(5))),
      height: height*0.16,
      width: width*0.32,

      //color: Colors.green,

        child: Container(
        child: Column(children: [

          Container(
            height: height*0.02,
          ),
        Container(alignment: Alignment.center,
        height: height*0.10,
        width: width*0.20,
        child: Image.asset(images[index],fit: BoxFit.cover,),
        //color: Colors.blue,
        ),
        Container(
        alignment: Alignment.bottomCenter,
        child: Text(modules[index],style: GoogleFonts.poppins(textStyle:TextStyle( color: Color(0xff5A4A42))),),
        //color: Colors.grey,
        ),
        ],)

        ),




      ),
      ],
      ),
      ),
    );
    }),
    );
  }
}
