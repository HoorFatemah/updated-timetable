import 'package:flutter/material.dart';

import 'package:student_view/dropdownlist.dart';
import 'package:student_view/daywisw.dart';
import 'package:student_view/weekwise.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
            'View Your Timetable',
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
          MaterialPageRoute(builder: (context) => TeacherListWidget()),
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
                          'assets/teacherwise.jpg',
                          height: 75, // Adjust the height as needed
                        ),
                         SizedBox(height: 6),
                            Text(
                              'Teacherwise',
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
          
