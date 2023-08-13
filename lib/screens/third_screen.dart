import 'package:flutter/material.dart';

class Admins5 extends StatefulWidget {
  const Admins5({Key? key}) : super(key: key);

  @override
  _Admins5State createState() => _Admins5State();
}

class _Admins5State extends State<Admins5> {
  String selectedTime = '';
  String selectedDay = '';
  String courseName = '';
  String section = '';
  String teacher = '';
  String programme = '';

  List<String> timeOptions = ['9 AM', '10 AM', '11 AM', '12 PM'];
  List<String> dayOptions = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday'];
  List<String> programmeOptions = ['Programme A', 'Programme B', 'Programme C'];
 List<String> DayOptions = ['9 AM', '10 AM', '11 AM', '12 PM'];
  List<String> CourseName = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday'];
  List<String> Section = ['BSCS', 'Intake A', 'Intake B'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TimeTable'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 26),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'Select Time',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.blueAccent),
                  ),
                  prefixIcon: Icon(Icons.access_time, color: Colors.blue),
                ),
                value: selectedTime.isNotEmpty ? selectedTime : null,
                items: timeOptions.map((String time) {
                  return DropdownMenuItem<String>(
                    value: time,
                    child: Text(time),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    selectedTime = newValue!;
                  });
                },
              ),
              SizedBox(height: 16),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'Select Day',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.blueAccent),
                  ),
                  prefixIcon: Icon(Icons.calendar_today, color: Colors.blue),
                ),
                value: selectedDay.isNotEmpty ? selectedDay : null,
                items: dayOptions.map((String day) {
                  return DropdownMenuItem<String>(
                    value: day,
                    child: Text(day),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    selectedDay = newValue!;
                  });
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Course Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.blueAccent),
                  ),
                  prefixIcon: Icon(Icons.book, color: Colors.blue),
                ),
                onChanged: (value) {
                  setState(() {
                    courseName = value;
                  });
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Section',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.blueAccent),
                  ),
                  prefixIcon: Icon(Icons.list, color: Colors.blue),
                ),
                onChanged: (value) {
                  setState(() {
                    section = value;
                  });
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Allot Teacher',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.blueAccent),
                  ),
                  prefixIcon: Icon(Icons.person, color: Colors.blue),
                ),
                onChanged: (value) {
                  setState(() {
                    teacher = value;
                  });
                },
              ),
              SizedBox(height: 16),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'Select Programme',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.blueAccent),
                  ),
                  prefixIcon: Icon(Icons.school, color: Colors.blue),
                ),
                value: programme.isNotEmpty ? programme : null,
                items: programmeOptions.map((String prog) {
                  return DropdownMenuItem<String>(
                    value: prog,
                    child: Text(prog),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    programme = newValue!;
                  });
                },
              ),
              SizedBox(height: 32),
              ElevatedButton(
                onPressed: () {
                  // Handle submit button action here
                },
                child: Text('Submit'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(200, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
