//import 'package:admin_view/screens/fifth_screen.dart';
//import 'package:admin_view/screens/uploadfile.dart';
import 'package:flutter/material.dart';
import 'package:student_view/screens/fifth_screen.dart';
import 'package:student_view/screens/uploadfile.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';


import 'package:flutter/material.dart';

import 'package:student_view/dropdownlist.dart';
import 'package:student_view/daywisw.dart';
import 'package:student_view/weekwise.dart';

class Admins2 extends StatefulWidget {
  const Admins2({Key? key});

  @override
  State<Admins2> createState() => _MyAppState();
}

class _MyAppState extends State<Admins2> {
  bool isNotificationEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student'),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                isNotificationEnabled = !isNotificationEnabled;
              });
            },
            icon: Icon(
              isNotificationEnabled ? Icons.notifications : Icons.notifications_off,
            ),
          ),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 229, 239, 243),
      body: Column(
        
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 16),
          Image.asset(
            'assets/new.jpg',
            height: 200,
          ),
          SizedBox(height: 16),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              '       Welcome Home,',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 16),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              '           Hoor,',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Generate and view Timetable',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
           SizedBox(height: 16),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              '           ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                InkWell(

                          onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => myApp()),
          );
        },
 
                child: Card(
                  shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                  color: Color.fromARGB(255, 109, 214, 214),
                  child: Container(
                    width: 100,
                    height: 110,
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/daywise.jpg',
                          height: 75, // Adjust the height as needed
                        ),
                    SizedBox(height: 6),
                            Text(
                              'Daywise',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
       onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => newapp()),
          );
        },
                child: Card(
                  shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                  color: Color.fromARGB(255, 131, 209, 135),
                  child: Container(
                    width: 100,
                    height: 110,
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/weekwise.jpg',
                          height: 75, // Adjust the height as needed
                        ),
                      SizedBox(height: 6),
                            Text(
                              'Weekwise',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
        onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Admins3()),
        );
      },
                child: Card(
                  shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                  color: Color.fromARGB(255, 217, 224, 108),
                  child: Container(
                    width: 100,
                    height: 110,
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/third.jpg',
                          height: 75, // Adjust the height as needed
                        ),
                         SizedBox(height: 6),
                            Text(
                              ' Generate ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
          































//  class Admins2 extends StatefulWidget {
//    const Admins2({Key? key}) : super(key: key);

//    @override
//    _HomeScreenState createState() => _HomeScreenState();
//  }

//  class _HomeScreenState extends State<Admins2> {
//    late SfCalendar _calendar;
//   CalendarView _calendarView = CalendarView.day;

  

//   List<DateTime> _startTimes = [
//     DateTime(2023, 7, 6, 9, 0, 0),
//     DateTime(2023, 7, 6, 11, 0, 0),
//     DateTime(2023, 7, 6, 13, 0, 0),
//     DateTime(2023, 7, 6, 15, 0, 0),
//     DateTime(2023, 7, 6, 17, 0, 0),
//   ];

//   List<DateTime> _endTimes = [
//     DateTime(2023, 7, 6, 11, 0, 0),
//     DateTime(2023, 7, 6, 13, 0, 0),
//     DateTime(2023, 7, 6, 15, 0, 0),
//     DateTime(2023, 7, 6, 17, 0, 0),
//     DateTime(2023, 7, 6, 19, 0, 0),
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

// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     appBar: AppBar(
//       title: const Text('Home'),
//       centerTitle: true,
//       leading: IconButton(
//         icon: Icon(Icons.home),
//         onPressed: () {
//           // Handle home icon button press
//         },
//       ),
//       actions: [
//         PopupMenuButton(
//           itemBuilder: (BuildContext context) => [
//             PopupMenuItem(
//               child: ListTile(
//                 leading: Icon(Icons.schedule),
//                 title: Text('Generate Timetable'),
//                 onTap: () {
//                   Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => Admins3()),
//                 );
//                   // Handle "Generate Timetable" menu item press
//                 },
//               ),
//             ),
//           PopupMenuItem(
//               child: ListTile(
//                 leading: Icon(Icons.add),
//                 title: Text('Add Teacher'),
//                 onTap: () {
//                   Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => Admins5()),
//                 );
//                   // Handle "Generate Timetable" menu item press
//                 },
//               ),
//             ),

//           ],
//           icon: Icon(Icons.menu),
//         ),
//         IconButton(
//       icon: Icon(Icons.search),
//       onPressed: () {
//         // TODO: Implement search functionality
//       },
//     ),
//       ],
//     ),
//     body: _calendar,
//   );
// }


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



// import 'package:admin_view/screens/fifth_screen.dart';
// import 'package:admin_view/screens/fourth_screen.dart';
// import 'package:admin_view/screens/third_screen.dart';
// import 'package:flutter/material.dart';

// class Admins2 extends StatefulWidget {
//   const Admins2({Key? key}) : super(key: key);

//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<Admins2> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Smart timetable maker'),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
//             ),
//             ElevatedButton.icon(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => Admins3()),
//                 );
//               },
//               icon: Icon(Icons.calendar_today), // Add an icon
//               label: Text(
//                 'Generate Timetable',
//                 style: TextStyle(fontSize: 18),
//               ),
//               style: ButtonStyle(
//                 minimumSize: MaterialStateProperty.all<Size>(Size(180, 50)),
//                 backgroundColor: MaterialStateProperty.all<Color>(Colors.pink),
//                 foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
//                 shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                   RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(25),
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
//             ),
//             ElevatedButton.icon(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => Admins4()),
//                 );
//               },
//               icon: Icon(Icons.view_list), // Add an icon
//               label: Text(
//                 'View Timetable',
//                 style: TextStyle(fontSize: 18),
//               ),
//               style: ButtonStyle(
//                 minimumSize: MaterialStateProperty.all<Size>(Size(200, 50)),
//                 backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
//                 foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
//                 shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                   RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(25),
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
//             ),
//             ElevatedButton.icon(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => Admins5()),
//                 );
//               },
//               icon: Icon(Icons.person_add), // Add an icon
//               label: Text(
//                 'Add Teacher',
//                 style: TextStyle(fontSize: 18),
//               ),
//               style: ButtonStyle(
//                 minimumSize: MaterialStateProperty.all<Size>(Size(200, 50)),
//                 backgroundColor:
//                     MaterialStateProperty.all<Color>(Colors.orange),
//                 foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
//                 shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                   RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(25),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
