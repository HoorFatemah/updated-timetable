import 'package:student_view/faculty/model/eventdatasource.dart';
import 'package:student_view/faculty/provider/eventprovider.dart';
import 'package:student_view/faculty/widget/taskwidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:provider/provider.dart';

class CalendarWidget extends StatefulWidget {
  @override
  _CalendarWidgetState createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  late SfCalendar _calendar;
  final CalendarView _calendarView = CalendarView.day;
  TextEditingController _textEditingController = TextEditingController();

  final Map<DateTime, String> _slotTextMap = {};
  List<Meeting> meetings = [];

  final List<DateTime> _startTimes = [
    DateTime(2023, 7, 22, 9, 0, 0),
    DateTime(2023, 7, 22, 11, 0, 0),
    DateTime(2023, 7, 22, 13, 0, 0),
    DateTime(2023, 7, 22, 15, 0, 0),
  ];

  final List<DateTime> _endTimes = [
    DateTime(2023, 7, 22, 11, 0, 0),
    DateTime(2023, 7, 22, 13, 0, 0),
    DateTime(2023, 7, 22, 15, 0, 0),
    DateTime(2023, 7, 22, 17, 0, 0),
  ];

  final List<String> _courses = [
    'Artificial Intelligence',
    'Data structure and algorithm',
    'Data Science',
     'Database',
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final events = Provider.of<EventProvider>(context).events;
    return Scaffold(
      appBar: AppBar(
        title: Text('Calendar'),
      ),
      body: SfCalendar(
        view: CalendarView.day,
        dataSource: EventDataSource(events),
        initialSelectedDate: DateTime.now(),
        onLongPress: (details) {
          final provider = Provider.of<EventProvider>(context, listen: true);

          provider.setDate(details.date!);
          showModalBottomSheet(
            context: context,
            builder: (context) => TasksWidget(),
          );
        },
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
        Color.fromARGB(255, i * 85, 170 - i * 65, 0),
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
