import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

class Calender2 extends StatefulWidget {
  const Calender2({Key? key}) : super(key: key);

  @override
  _Calender2State createState() => _Calender2State();

}

class _Calender2State extends State<Calender2> {
  // var Date1 = (date) => print(date);
  var date;
  bool monthClick = false;
// colorMethod(){
//   bool monthClick =
// }
  @override
  void initState() {
    // TODO: implement initState
    initializeDateFormatting();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var status = MediaQuery.of(context).padding.top;
    var appBar = AppBar().preferredSize.height;
    print('what');
    return Container(
      height: height * 0.25,
      width: width,
      // color: Colors.blue,

      child: CalendarTimeline(
        initialDate: DateTime.now(),
        firstDate: DateTime(DateTime.now().year - 5),
        lastDate: DateTime(DateTime.now().year + 5),
        onDateSelected: (date) => print(date),
        leftMargin: 7,
        monthColor: Color(0xff2B3990),
        dayColor: Color(0xff2B3990),
        activeDayColor: Colors.white,
        activeBackgroundDayColor: Color(0xff2B3990),
        showYears: true,

        // locale: 'en_ISO',
      ),
    );
  }
}
