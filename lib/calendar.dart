import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

// StatefulWidget
class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  CalendarState createState() => CalendarState();
}

class CalendarState extends State<Calendar> {
// created controller
  @override
  Widget build(BuildContext context) {
    return TableCalendar(firstDay: DateTime(2022), lastDay: DateTime(2022, 12, 31), focusedDay: DateTime(2022, 6, 3));
  }
}
