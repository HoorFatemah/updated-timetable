import 'package:student_view/faculty/page/EventEditingPage.dart';
import 'package:student_view/faculty/provider/eventprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'widget/CalendarWidget.dart';

// void main() {
//   runApp(MyApp());
// }

class Teacher extends StatelessWidget {
  static String title = '';

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => EventProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: title,
          home: MyWidget(),
        ),
      );
}

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CalendarWidget(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => EventEditingPage()),
        ),
      ),
    );
  }
}
