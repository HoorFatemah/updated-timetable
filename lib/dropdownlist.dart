import 'package:flutter/material.dart';
import 'package:student_view/teacherwise.dart';

class TeacherListWidget extends StatefulWidget {
  @override
  _TeacherListWidgetState createState() => _TeacherListWidgetState();
}

class _TeacherListWidgetState extends State<TeacherListWidget> {
  String _selectedTeacher = 'All';
  List<String> _filteredTeachers = [];

  final List<String> _teachers = [
'Dr. Naveed Anwar Butt',
'Dr. Muhammad Usman Ali',
'Dr. Umar Shoaib',
'Mr. Najeeb Ur Rahman',
'Ms. Saliha Zahoor',
'Dr. Abdur Rehman',
'Dr. Zafar Mehmood Khatak',
'Mr. Toqeer Ehsan',
'Mr. Bilal Ahmad Janjooa',
'Mr. Muhammad Jabbar',
'Mr. Zaheer Ahmed',
'Ms. Ayesha Rashid',
'Ms. Ammara Javed',
'Ms. Nabgha Hasmi',
'Mr. Khuram Shahzad',
'Mr. Yasir Zaman',
'Mr. Yasir Zaman',
'Ms. Maida Bugvi',
'Ms. Ayesha Shahid Kiani',
'Ms. Irsa Masood',
'Mr. Saqib Rasool',
'Syed Muhammad Shoiab Arif',
'Mr. Naveel Dar',
'Dr. Muhammad Haseeb',
'Amna Tasaduq',
'Zabe Ullah',
'Zain Iqbal',
'Hafiz Muhammad Shahbaz',
'Ms. Sadia Firdous',
'Ms. Sadia Firdous',
'Amir Hamza',
'Mr. Soahil Ahmad',
'Name of Faculty Member',
'Mr. Mubbashar Hussain',
'Dr. nouman riaz chuadhary'

,
  ];

  @override
  void initState() {
    super.initState();
    _filteredTeachers = _teachers;
  }

  void _performSearch(String query) {
    if (query.isNotEmpty) {
      setState(() {
        _filteredTeachers = _teachers
            .where((teacher) =>
                teacher.toLowerCase().contains(query.toLowerCase()))
            .toList();
      });
    } else {
      setState(() {
        _filteredTeachers = _teachers;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text('All'),
            IconButton(
              icon: const Icon(Icons.arrow_drop_down),
              onPressed: () {
                // Perform search operation
              },
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              showSearch(
                context: context,
                delegate: TeacherSearchDelegate(),
              );
            },
          ),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 229, 239, 243),
      body: ListView.builder(
        itemCount: _filteredTeachers.length,
        itemBuilder: (context, index) {
          final teacher = _filteredTeachers[index];
          return ListTile(
            leading: Icon(
              Icons.person,
              size: 30,
            ),
            title: Text(teacher),
            onTap: () {
              Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => teacherwise()),
                          );
            },
          );
        },
      ),
    );
  }
}

class TeacherSearchDelegate extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, '');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // This method is not used for this example but can be implemented
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final List<String> suggestions = query.isEmpty
        ? []
        : [
'Dr. Naveed Anwar Butt',
'Dr. Muhammad Usman Ali',
'Dr. Umar Shoaib',
'Mr. Najeeb Ur Rahman',
'Ms. Saliha Zahoor',
'Dr. Abdur Rehman',
'Dr. Zafar Mehmood Khatak',
'Mr. Toqeer Ehsan',
'Mr. Bilal Ahmad Janjooa',
'Mr. Muhammad Jabbar',
'Mr. Zaheer Ahmed',
'Ms. Ayesha Rashid',
'Ms. Ammara Javed',
'Ms. Nabgha Hasmi',
'Mr. Khuram Shahzad',
'Mr. Yasir Zaman',
'Mr. Yasir Zaman',
'Ms. Maida Bugvi',
'Ms. Ayesha Shahid Kiani',
'Ms. Irsa Masood',
'Mr. Saqib Rasool',
'Syed Muhammad Shoiab Arif',
'Mr. Naveel Dar',
'Dr. Muhammad Haseeb',
'Amna Tasaduq',
'Zabe Ullah',
'Zain Iqbal',
'Hafiz Muhammad Shahbaz',
'Ms. Sadia Firdous',
'Ms. Sadia Firdous',
'Amir Hamza',
'Mr. Soahil Ahmad',
'Name of Faculty Member',
'Mr. Mubbashar Hussain',
'Dr. nouman riaz chuadhary'
          ]
            ..retainWhere((teacher) =>
                teacher.toLowerCase().contains(query.toLowerCase()));

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final suggestion = suggestions[index];
        return ListTile(
          title: Text(suggestion),
          onTap: () {
            //close(context, suggestion);
             Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => teacherwise()),
                          );
          },
        );
      },
    );
  }
}
