import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'ATTENDANCE_RECORDS/attendance_record_first_page.dart';
import 'HOMEPAGES_MODULES/MyHomePage.dart';
import 'SIGNIN/easy_atendance_first_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,


  ]).then((value) =>  runApp(MyApp()));

}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: EasyAttendanceFirstPage(),
    );
  }
}
