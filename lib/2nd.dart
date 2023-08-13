import 'package:flutter/material.dart';
import 'package:student_view/3rd.dart';
import 'package:student_view/faculty/abc.dart';
import 'package:student_view/screens/second_screen.dart';
import 'package:student_view/faculty/abc.dart';
import 'package:student_view/faculty/widget/beforecalendar.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  String selectedRole = 'Student';
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void login() {
    if (selectedRole == 'Student') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MyApp()),
      );
    } else if (selectedRole == 'Admin') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Admins2()),
      );
    } else {
          Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => teachercalendar()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Container(
        color: const Color.fromARGB(255, 229, 239, 243),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 200,
                child: Image.asset(
                  'assets/new.jpg',
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Hello Again!',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Container(
                width: 200,
                padding: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Row(
                  children: [
                    Icon(Icons.person),
                    SizedBox(width: 8),
                    Expanded(
                      child: DropdownButton<String>(
                        value: selectedRole,
                        onChanged: (value) {
                          setState(() {
                            selectedRole = value!;
                          });
                        },
                        items: ['Student', 'Teacher', 'Admin'].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Container(
                width: 300,
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: 'Enter email',
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Container(
                width: 300,
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Enter password',
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: login,
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.login),
                    SizedBox(width: 8),
                    Text('Login'),
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
