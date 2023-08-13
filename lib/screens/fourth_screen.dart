// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_calendar/calendar.dart';

// class Admins4 extends StatefulWidget {
//   const Admins4({Key? key}) : super(key: key);

//   @override
//   _Admins4State createState() => _Admins4State();
// }

// class _Admins4State extends State<Admins4> {
//   late SfCalendar _calendar;
//   CalendarView _calendarView = CalendarView.day;

//   List<DateTime> _startTimes = [
//     DateTime(2023, 5, 29, 9, 0, 0),
//     DateTime(2023, 5, 29, 11, 0, 0),
//     DateTime(2023, 5, 29, 13, 0, 0),
//     DateTime(2023, 5, 29, 15, 0, 0),
//     DateTime(2023, 5, 29, 17, 0, 0),
//   ];

//   List<DateTime> _endTimes = [
//     DateTime(2023, 5, 29, 11, 0, 0),
//     DateTime(2023, 5, 29, 13, 0, 0),
//     DateTime(2023, 5, 29, 15, 0, 0),
//     DateTime(2023, 5, 29, 17, 0, 0),
//     DateTime(2023, 5, 29, 19, 0, 0),
//   ];

//   List<String> _courses = [
//     'Artificial Intelligence',
//     'Data structure and algorithm',
//     'Data Science',
//     'Database',
//     'web system and teachnology',
//   ];

//   List<Color> colors = [
//     Color.fromARGB(255, 122, 134, 15),
//     Color.fromARGB(255, 230, 226, 44),
//     Color.fromARGB(255, 15, 134, 78),
//     Color.fromARGB(255, 226, 127, 33),
//     Color.fromARGB(255, 226, 33, 139),
//   ];

//   @override
//   void initState() {
//     super.initState();
//     _calendar = SfCalendar(
//       view: _calendarView,
//       showCurrentTimeIndicator: true,
//       dataSource: MeetingDataSource(_getDataSource()),
//       monthViewSettings: MonthViewSettings(
//         appointmentDisplayMode: MonthAppointmentDisplayMode.appointment,
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('TimeTable'),
//         centerTitle: true,
//       ),
//       body: _calendar,
//     );
//   }

//   List<Meeting> _getDataSource() {
//     final List<Meeting> meetings = <Meeting>[];
//     for (int i = 0; i < _startTimes.length; i++) {
//       meetings.add(Meeting(
//         _courses[i],
//         _startTimes[i],
//         _endTimes[i],
//         colors[i],
//         //Color.fromARGB(255, i * 50, 255 - i * 50, 0),
//         false,
//       ));
//     }
//     return meetings;
//   }
// }

// class MeetingDataSource extends CalendarDataSource {
//   MeetingDataSource(List<Meeting> source) {
//     appointments = source;
//   }

//   @override
//   DateTime getStartTime(int index) {
//     return appointments![index].from;
//   }

//   @override
//   DateTime getEndTime(int index) {
//     return appointments![index].to;
//   }

//   @override
//   String getSubject(int index) {
//     return appointments![index].eventName;
//   }

//   Color getColor(int index) {
//     return appointments![index].background;
//   }

//   @override
//   bool isAllDay(int index) {
//     return appointments![index].isAllDay;
//   }
// }

// class Meeting {
//   Meeting(this.eventName, this.from, this.to, this.background, this.isAllDay);

//   String eventName;
//   DateTime from;
//   DateTime to;
//   Color background;
//   bool isAllDay;
// }
