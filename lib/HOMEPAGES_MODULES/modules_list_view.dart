import 'package:attendanceapp/ATTENDANCE_RECORDS/attendance_record_first_page.dart';
import 'package:attendanceapp/ATTENDANCE_RECORDS/attendance_records.dart';
import 'package:attendanceapp/CHANGE_LOCATION/homescreen.dart';
import 'package:attendanceapp/COMPLAINTS/complaints.dart';
import 'package:attendanceapp/EQUIPMENTENTRY%20FORM/Equipment%20_Entry%20_Form.dart';
import 'package:attendanceapp/EXPENSES/homepage_of_expenses.dart';
import 'package:attendanceapp/MATERIAL_REQUEST/material_request.dart';
import 'package:attendanceapp/TASKLISTPAGE/TaskListTabBar.dart';





List pages = [
  FirstPage(),
  TaskListTabBar(),
  MaterialRequest(),
  EquipmentEntryForm(),
  ExpensesHomePage(),
  Complaints(),
  ChangeLocation(),
];