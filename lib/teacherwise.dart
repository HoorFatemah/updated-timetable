import 'package:flutter/material.dart';
import 'package:student_view/3rd.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class teacherwise extends StatelessWidget {
  void _onPopupMenuItemSelected(String value, BuildContext context) {
    if (value == 'Weekly View') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => WeeklyView(meetings)),
      );
    } else if (value == 'daily view') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MonthlyView(meetings)),
      );
    }
  }

List<Meeting> meetings = [];

  final List<DateTime> _startTimes = [
    DateTime(2023, 7, 16, 9, 0, 0),
    DateTime(2023, 7, 16, 11, 0, 0),
    DateTime(2023, 7, 16, 13, 0, 0),
    DateTime(2023, 7, 16, 17, 0, 0),
  ];

  final List<DateTime> _endTimes = [
    DateTime(2023, 7, 16, 11, 0, 0),
    DateTime(2023, 7, 16, 13, 0, 0),
    DateTime(2023, 7, 16, 15, 0, 0),
    DateTime(2023, 7, 16, 19, 0, 0),
  ];

  final List<String> _courses = [
    'Artificial Intelligence',
    'Data structure and algorithm',
    'Data Science',
     'Database',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 229, 239, 243),
      appBar: AppBar(
        title: const Text('Calendar'),
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) => _onPopupMenuItemSelected(value, context),
            itemBuilder: (BuildContext context) => [
              PopupMenuItem<String>(
                value: 'Weekly View',
                child: const Text('Weekly View'),
              ),
              PopupMenuItem<String>(
                value: 'Daily View',
                child: const Text('Daily View'),
              ),
            ],
          ),
        ],
      ),
      body: SfCalendar(
        view: CalendarView.day,
dataSource: MeetingDataSource(_getDataSource()),
      ),
    );
  }

List<Meeting> _getDataSource() {
    meetings = [];
    for (int i = 0; i < _startTimes.length; i++) {
      meetings.add(Meeting(
        i,
        _courses[i],
        _startTimes[i],
        _endTimes[i],
        Color.fromARGB(255, i * 90, 99 - i * 35, 0),
        false,
      ));
    }
    return meetings;
  }
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Meeting> source) {
    appointments = source;
  }

  @override
  DateTime getStartTime(int index) {
    return appointments![index].from;
  }

  @override
  DateTime getEndTime(int index) {
    return appointments![index].to;
  }

  @override
  String getSubject(int index) {
    return appointments![index].eventName;
  }

  Color getColor(int index) {
    return appointments![index].background;
  }

  @override
  bool isAllDay(int index) {
    return appointments![index].isAllDay;
  }
}

class Meeting {
  Meeting(this.m_id, this.eventName, this.from, this.to, this.background,
      this.isAllDay);

  int m_id;
  String eventName;
  DateTime from;
  DateTime to;
  Color background;
  bool isAllDay;
}
class WeeklyView extends StatelessWidget {
 final List<Meeting> meetings;

  WeeklyView(this.meetings);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 229, 239, 243),
      appBar: AppBar(
        title: const Text('weekly view'),
      ),
      body: SfCalendar(
        view: CalendarView.week,
        dataSource: MeetingDataSource(meetings),
      ),
    );
  }
}

class MonthlyView extends StatelessWidget {
  final List<Meeting> meetings;

  MonthlyView(this.meetings);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('monthly view'),
      ),
      body: SfCalendar(
        view: CalendarView.month,
        dataSource: MeetingDataSource(meetings),
      ),
    );
  }
}