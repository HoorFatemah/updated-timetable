import 'package:flutter/material.dart';
import 'package:student_view/3rd.dart';
import 'package:student_view/faculty/abc.dart';
import 'package:student_view/screens/second_screen.dart';
import 'package:student_view/faculty/abc.dart';
import 'package:student_view/faculty/widget/beforecalendar.dart';

class addteacher extends StatefulWidget {
  const addteacher({Key? key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<addteacher> {
  String selectedRole = 'Student';
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Instructor Registration'),
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
              '                  Welcome Again,',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

 SizedBox(height: 16),
              Container(
                width: 300,
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: 'Enter Name',
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
             const SizedBox(height: 32),
                    Container(
                      width: 200, // Set the width of the button
                      height: 60, // Set the height of the button
                      child: ElevatedButton(
                        onPressed: () {
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
                          'Register',
                        ),
                      ),
                    ),
               
              ],),
            
          );

  
  }
}
