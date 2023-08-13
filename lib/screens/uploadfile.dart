// import 'package:admin_view/screens/fourth_screen.dart';
// import 'package:admin_view/screens/second_screen.dart';
// import 'package:admin_view/screens/third_screen.dart';
import 'package:flutter/material.dart';
import 'package:student_view/screens/fifth_screen.dart';
import 'package:student_view/screens/second_screen.dart';

class Admins3 extends StatefulWidget {
  const Admins3({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<Admins3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TimeTable'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.2),
                    shape: BoxShape.circle,
                  ),
                ),
                Icon(
                  Icons.file_upload,
                  size: 100,
                  color: Colors.blue,
                ),
              ],
            ),
            // SizedBox(height: 16),
            // Text(
            //   'Upload Excelsheet',
            //   style: TextStyle(fontSize: 20),
            // ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Admins2()),
                );
              },
              child: Text(
                'Browse Files',
                style: TextStyle(fontSize: 18),
              ),
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all<Size>(Size(200, 50)),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            ),
            ElevatedButton(
              onPressed: () {
                 Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Admins5()),
                );
              },
              child: Text(
                'Add manually',
                style: TextStyle(fontSize: 18),
              ),
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all<Size>(Size(200, 50)),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
