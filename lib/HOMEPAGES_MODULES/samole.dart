// import 'package:flutter/material.dart';
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     var height = MediaQuery.of(context).size.height;
//     var width = MediaQuery.of(context).size.width;
//     double barApp = AppBar().preferredSize.height;
//     double statusBarHeight = MediaQuery.of(context).padding.top;
//     double bottomPadding = MediaQuery.of(context).padding.bottom;
//     return Scaffold(
//       body: Container(
//         height: height,
//         width: width,
//         child: Column(
//           children: [
//             Container(
//               color: Colors.red,
//               child: Row(
//                 children: [
//                   Stack(
//                     children: [
//                       Container(
//                         child: Positioned(
//                           top: -40,
//                           left: -19,
//                           child: Image.asset("assets/Path 144.png"),
//                         ),
//                       ),
//                       Container(
//                           margin: EdgeInsets.only(top: 0),
//                           height: height * 0.20,
//                           width: width,
//                           // color: Colors.red,
//                           alignment: Alignment.topLeft,
//                           child: Stack(
//                             children: [
//                               Positioned(
//                                 top: 50,
//                                 right: 140,
//                                 child: Container(
//                                   child: Text(
//                                     "easyAttendence",
//                                     style: TextStyle(
//                                         color: Color(0xff5A4A42),
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 23),
//                                   ),
//                                 ),
//                               ),
//                               Center(child: Container()),
//                               Container(
//                                 alignment: Alignment.bottomCenter,
//                                 child: Text(
//                                   "06.30",
//                                   style: TextStyle(
//                                       color: Color(0xff5A4A42),
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 23),
//                                 ),
//                               ),
//                             ],
//                           )),
//                     ],
//                   )
//                 ],
//               ),
//             ),
//             Container(
//               alignment: Alignment.center,
//               height: height * 0.04,
//               width: width,
//               color: Colors.blue,
//               child: Text(
//                 "Wednesday,Dec 12",
//                 style: TextStyle(fontSize: 20, color: Color(0xff5A4A42)),
//               ),
//             ),
//             Row(
//               children: [
//                 Container(
//                   height: height * 0.17,
//                   width: width,
//                   color: Colors.blue,
//                   child: Image.asset("assets/Group 25.png"),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: height * 0.01,
//             ),
//             Container(
//               height: height * 0.03,
//               width: width,
//               color: Colors.blueGrey,
//               child: Row(
//                 children: [
//                   Container(
//                     width: width * 0.22,
//                   ),
//                   Container(
//                     alignment: Alignment.topRight,
//                     height: height * 0.1,
//                     //width: width * 0.4,
//                     color: Colors.green,
//                     child: Icon(Icons.location_on),
//                   ),
//                   Container(
//                     alignment: Alignment.topLeft,
//                     height: height * 0.1,
//                     width: width * 0.6,
//                     color: Colors.green,
//                     child: Text("Loctation: Near Pandi Koil Madurai"),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               height: height * 0.03,
//               width: width,
//               color: Colors.red,
//               child: Row(
//                 children: [
//                   Container(
//                     height: height * 0.05,
//                     width: width * 0.20,
//                   ),
//                   Container(
//                     alignment: Alignment.topLeft,
//                     height: height * 0.05,
//                     width: width * 0.13,
//                     color: Colors.blue,
//                     child: Icon(Icons.rotate_left),
//                   ),
//                   SizedBox(
//                     width: width * 0.17,
//                   ),
//                   Container(
//                     alignment: Alignment.topLeft,
//                     height: height * 0.05,
//                     width: width * 0.13,
//                     color: Colors.blue,
//                     child: Icon(Icons.rotate_left),
//                   ),
//                   SizedBox(
//                     width: width * 0.17,
//                   ),
//                   Container(
//                     alignment: Alignment.topLeft,
//                     height: height * 0.05,
//                     width: width * 0.13,
//                     color: Colors.blue,
//                     child: Icon(Icons.rotate_left),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               height: height * 0.03,
//               width: width,
//               color: Colors.red,
//               child: Row(
//                 children: [
//                   Container(
//                     height: height * 0.05,
//                     width: width * 0.20,
//                   ),
//                   Container(
//                     alignment: Alignment.topLeft,
//                     height: height * 0.05,
//                     width: width * 0.13,
//                     color: Colors.blue,
//                     child: Text("09:10"),
//                   ),
//                   SizedBox(
//                     width: width * 0.17,
//                   ),
//                   Container(
//                     alignment: Alignment.topLeft,
//                     height: height * 0.05,
//                     width: width * 0.13,
//                     color: Colors.blue,
//                     child: Text("09:10"),
//                   ),
//                   SizedBox(
//                     width: width * 0.17,
//                   ),
//                   Container(
//                     alignment: Alignment.topLeft,
//                     height: height * 0.05,
//                     width: width * 0.13,
//                     color: Colors.blue,
//                     child: Text("09:10"),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               height: height * 0.03,
//               width: width,
//               color: Colors.red,
//               child: Row(
//                 children: [
//                   Container(
//                     height: height * 0.05,
//                     width: width * 0.19,
//                   ),
//                   Container(
//                     alignment: Alignment.topLeft,
//                     height: height * 0.05,
//                     width: width * 0.13,
//                     color: Colors.blue,
//                     child: Text("Clock In"),
//                   ),
//                   SizedBox(
//                     width: width * 0.12,
//                   ),
//                   Container(
//                     alignment: Alignment.topCenter,
//                     height: height * 0.05,
//                     width: width * 0.20,
//                     color: Colors.blue,
//                     child: Text("Clock Out"),
//                   ),
//                   SizedBox(
//                     width: width * 0.12,
//                   ),
//                   Container(
//                     alignment: Alignment.topLeft,
//                     height: height * 0.05,
//                     width: width * 0.20,
//                     color: Colors.blue,
//                     child: Text("Working Hrs"),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: height * 0.1,
//             ),
//             Container(
//               child: Container(
//                 child: Column(
//                   children: [
//                     Container(
//                       decoration: BoxDecoration(
//                           color: Color(0xff1B67C1),
//                           borderRadius: BorderRadius.only(
//                               topLeft: Radius.circular(60),
//                               topRight: Radius.circular(60))),
//                       child: Container(
//                         height: height * 0.36,
//                         width: width,
//                         child: GridView.builder(
//                             itemCount: 20,
//                             gridDelegate:
//                             SliverGridDelegateWithMaxCrossAxisExtent(
//                               maxCrossAxisExtent: 200,
//                               childAspectRatio: 20,
//                               mainAxisSpacing: 20,
//                             ),
//                             itemBuilder: (BuildContext ctx, index) {
//                               return Column(
//                                 children: [
//                                   Container(
//                                     child: Text("1234"),
//                                   ),
//                                 ],
//                               );
//                             }),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }


// child: Container(
// height: height,
// width: width,
// decoration: BoxDecoration(
// image: DecorationImage(image: AssetImage("assets/commonbg/commonbg.png"),fit: BoxFit.fill),
//
//
// ),
// //color: Colors.grey,
//
// child: Column(children: [
// Container(
// height: height*0.06,
// width: width,
// //color: Colors.red,
// child: Row(children: [
// Container(
// child: IconButton(onPressed: (){
//
// }, icon: Icon(Icons.arrow_back,color: Colors.white,size: 25,)),
// ),
// SizedBox(
// width: width*0.03,
// ),
// Container(
// child: Text("Attedndance Record",
// style: GoogleFonts.poppins(textStyle:TextStyle(fontSize: 20, color: Colors.white)),),
// )
// ],),
//
//
// ),
//
// Container(
// //color: Colors.red,
// height: height*0.08,
// width: width,
// child: Row(
// children: [
// Container(
// width: width*0.07,
// //color: Colors.black,
// ),
// Card(
// child: Container(
// width: width*0.4,
// child: TextFormField(
// decoration: InputDecoration(
// suffixIcon: Container(
// child: Image.asset("assets/homepagemodule/Icon awesome-calendar-alt.png"),
// )
// ),
//
// ),
//
// ),
// ),
// Card(
// child: Container(
// width: width*0.4,
// child: TextFormField(
// decoration: InputDecoration(
// suffixIcon:  Container(
// child: Image.asset("assets/homepagemodule/Icon awesome-calendar-alt.png"),
// )
// ),
//
// ),
// ),
// ),
//
//
// ],
// ),
// ),
//
//
// Container(
// height: height*0.3,
// width: width,
// //color: Colors.blue,
// child: Row(children: [
// Container(
// child:  Positioned(
//
// bottom: -500
// ,child:  Container(
// height: height*0.08,
// width: width*0.03,
// //color: Colors.orange,
// child: Image.asset("assets/homepagemodule/Ellipse 12@2x.png"),
// ),),
// ),
// SizedBox(
// width: width*0.14,
// ),
//
// Card(
// elevation: 2,
// child:
// Container(decoration: BoxDecoration(border: Border.all(width: 1,color:Color(0xff22329C) )),
// height: height*0.29,
// width: width*0.56,
// //color: Colors.green,
// child: Column(children: [
// Row(
// children: [
// Container(
//
// width: width*0.05,
// ),
// Container(width: width*0.07,
//
// child: Radio( value: false,
// onChanged: (newValue){
// setState(() {
//
// });
// }, groupValue: true,
// ),
// ),
// Container(
// child: Text("Present",style: TextStyle(color: Color(0xff5A4A42)),),
// ),
// SizedBox(
// width: width*0.05,
// ),
// Container(width: width*0.07,
// child: Radio( value: false,
// onChanged: (newValue){
// setState(() {
//
// });
// }, groupValue: true,
// ),
// ),
// Container(
// child:  Text("Absent",style: TextStyle(color: Color(0xff5A4A42)),),
// )
//
// ],
// ),
//
//
// Container(
// margin: EdgeInsets.only(top: 12),
// height: height*0.17,
// width: width*0.35,
//
// //color: Colors.black,
// child: Image.asset("assets/homepagemodule/Group 22.png"),
// ),
//
// ],) ,
// ),),
//
// Container(
// height: height*0.50,
// width: width*0.2,
// child: Image.asset("assets/homepagemodule/Path 35@2x.png"),
// )
//
// ],),
//
// ),
//
// SizedBox(
// height: height*0.02,
// ),
// Container(
// height: height*0.33,
// width: width,
// //color: Colors.greenAccent,
// child: Row(children: [
// Container(
//
//
//
//
// height: height*0.08,
// width: width*0.03,
//
// ),
//
// SizedBox(
// width: width*0.14,
// ),
//
// Card(
// elevation: 2,
// child:
// Container(decoration: BoxDecoration(border: Border.all(width: 1,
// color:Color(0xff22329C) )),
// height: height*0.29,
// width: width*0.56,
// //color: Colors.green,
// child: Column(children: [
// Row(
// children: [
// Container(
//
// width: width*0.05,
// ),
// Container(width: width*0.07,
//
// child: Radio( value: false,
// onChanged: (newValue){
// setState(() {
//
// });
// }, groupValue: true,
// ),
// ),
// Container(
// child: Text("On Time",style: TextStyle(color: Color(0xff5A4A42)),),
// ),
// SizedBox(
// width: width*0.03,
// ),
// Container(width: width*0.07,
// child: Radio( value: false,
// onChanged: (newValue){
// setState(() {
//
// });
// }, groupValue: true,
// ),
// ),
// Container(
// child:  Text("Late/Leave",style: TextStyle(color: Color(0xff5A4A42)),),
// )
//
// ],
// ),
//
//
// Container(
// margin: EdgeInsets.only(top: 12),
// height: height*0.17,
// width: width*0.35,
//
// //color: Colors.black,
// child: Image.asset("assets/homepagemodule/Group 22.png"),
// ),
//
// ],) ,
// ),),
//
//
//
// ],),
//
// )
//
// ],) ,),