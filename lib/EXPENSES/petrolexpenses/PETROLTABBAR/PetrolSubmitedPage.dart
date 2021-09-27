import 'package:flutter/material.dart';

class PetrolSubmitedPage extends StatefulWidget {
  const PetrolSubmitedPage({Key? key}) : super(key: key);

  @override
  _PetrolSubmitedPageState createState() => _PetrolSubmitedPageState();
}

class _PetrolSubmitedPageState extends State<PetrolSubmitedPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
          height: height,
          width: width,
          color: Colors.red,
          child: ListView.builder(
              itemCount: 2,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: height * 0.15,
                  width: width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.fromBorderSide(
                          BorderSide(color: Color(0xff707070), width: 1))),
                );
              }),
        ),
        bottomSheet: Stack(
          children: [
            Container(
              height: height * 0.15,
              width: width,
            ),
            Positioned(
                top: 40,
                left: 10,
                child: bottomButton(height, width,
                    text: "DELETE", color: Color(0xff263FB6))),
          ],
        ));
  }

  Container bottomButton(double height, double width, {text, color}) {
    return Container(
      height: height * 0.06,
      width: width * 0.95,
      child: ElevatedButton(
        child: Text(text),
        onPressed: () {},
        style: ElevatedButton.styleFrom(primary: color),
      ),
    );
  }
}
