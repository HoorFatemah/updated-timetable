import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:student_view/faculty/page/eventviewingpage.dart';
import 'package:student_view/faculty/provider/eventprovider.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';


class teacherdaywise extends StatefulWidget {
  @override
  _CalendarWidgetState createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<teacherdaywise> {
  late SfCalendar _calendar;
  final CalendarView _calendarView = CalendarView.day;
  TextEditingController _textEditingController = TextEditingController();

  final Map<DateTime, String> _slotTextMap = {};
  List<Meeting> meetings = [];

  final List<DateTime> _startTimes = [
    DateTime(2023, 7, 24, 9, 0, 0),
    DateTime(2023, 7, 24, 11, 0, 0),
    DateTime(2023, 7, 24, 13, 0, 0),
    DateTime(2023, 7, 24, 15, 0, 0),
  ];

  final List<DateTime> _endTimes = [
    DateTime(2023, 7, 24, 11, 0, 0),
    DateTime(2023, 7, 24, 13, 0, 0),
    DateTime(2023, 7, 24, 15, 0, 0),
    DateTime(2023, 7, 24, 17, 0, 0),
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
     //_calendar = 
  }

  @override
  Widget build(BuildContext context) {
    //final events = Provider.of<EventProvider2>(context).events;
    return Scaffold(
      appBar: AppBar(
        title: Text('Calendar'),
      ),
      body: SfCalendar(
         backgroundColor: const Color.fromARGB(255, 229, 239, 243),
        view: _calendarView,
        
        showCurrentTimeIndicator: true,
        dataSource: MeetingDataSource(_getDataSource()),
        monthViewSettings: const MonthViewSettings(
          appointmentDisplayMode: MonthAppointmentDisplayMode.appointment,
        ),
        onLongPress: (CalendarLongPressDetails details) {
          print('id: ${details.targetElement.name}');

          print("index: ${details.date}");

          showDialog(
            context: context,
            builder: (BuildContext context) {
              String? slotText;
              if (details.date != null) {
                slotText = _slotTextMap[details.date!];
                Center(
                  child: Text(slotText ??
                      ''), // Display the slot text, or an empty string if it is null
                );
              }

              // Get any existing text for the slot
              return AlertDialog(
                title: Text('Add text to slot'),
                content: TextField(
                  decoration: InputDecoration(hintText: 'Enter text here'),
                  controller: _textEditingController, // Use the text controller
                  onChanged: (value) {
                    setState(() {
                       _slotTextMap[details.date!] = value;

                    });
                  },
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: () {

                      setState(() {

                        Meeting a = details.appointments![0];
                        print("index: ${a.m_id}");

                        _courses[a.m_id] = _textEditingController.text;
                      });
                      Navigator.of(context).pop();
                    },
                    child: const Text('Save'),
                  ),
                ],
              );
            },
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
