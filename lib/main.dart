import 'package:flutter/material.dart';
import 'package:student_view/2nd.dart';
import 'package:student_view/3rd.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50], // Set the desired light background color
      body: Padding(
        padding: EdgeInsets.all(10), // Add padding from the top
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0), // Set the desired border radius
                  child: Image.asset(
                    'assets/space.jpg', // Replace with the path to your image file
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Makeup & Timetable',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Managing conflicts and saving your time is the goal of this app',
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 32),
                    Container(
                      width: 200, // Set the width of the button
                      height: 60, // Set the height of the button
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SecondScreen()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white, // Set the button color to white
                          onPrimary: Colors.black, // Set the text color to black
                          textStyle: TextStyle(
                            fontSize: 18, // Set the font size of the button text
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        child: Text(
                          'Get Started',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
