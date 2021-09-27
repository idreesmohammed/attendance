import 'package:attendanceapp/EQUIPMENTENTRY%20FORM/Equipment%20_Entry%20_Form.dart';



import 'package:flutter/material.dart';

import 'Pending_List.dart';
import 'Work_List_page.dart';



class TaskListTabBar extends StatefulWidget {
  const TaskListTabBar({Key? key}) : super(key: key);

  @override
  _TaskListTabBarState createState() => _TaskListTabBarState();
}

class _TaskListTabBarState extends State<TaskListTabBar> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var status = MediaQuery.of(context).padding.top;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.only(top: status),
        child: DefaultTabController(
          length: 2,
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/background/background.png"),
                    fit: BoxFit.fill)),
            // color: Colors.amber,
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: height * 0.1,
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
                        top: 5,
                        left: 153,
                        child: Text(
                          "Task List",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: "Poppins",
                              fontStyle: FontStyle.normal),
                        )),
                  ],
                ),
                Container(
                  height: height * 0.08,
                  width: width,
                  child: TabBar(
                      unselectedLabelColor: Colors.red,
                      unselectedLabelStyle: TextStyle(color: Colors.green),
                      tabs: [
                        Container(
                            child: Text("Work List",
                                style: TextStyle(
                                    color: Color(0xff5A4A42),
                                    fontFamily: "Poppins",
                                    fontStyle: FontStyle.normal))),
                        Container(
                          child: Text(
                            "Pending List",
                            style: TextStyle(
                                color: Color(0xff5A4A42),
                                fontFamily: "Poppins",
                                fontStyle: FontStyle.normal),
                          ),
                        )
                      ]),
                ),
                Container(
                  height: height * 0.7812,
                  width: width,
                  // color: Colors.red,
                  child: TabBarView(children: <Widget>[
                    WorkList(),
                    PendingList(),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: null,
    );
  }
}
