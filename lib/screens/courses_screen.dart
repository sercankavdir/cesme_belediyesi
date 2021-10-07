import 'package:flutter/material.dart';

import '../widgets/course_widget.dart';
import '../models/course.dart';

class CoursesScreen extends StatefulWidget {
  static const routeName = '/kurslar';
  final List<Course> availableKurs;

  CoursesScreen(this.availableKurs);

  @override
  State<CoursesScreen> createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<CoursesScreen> {
  String newTitle;
  List<Course> displayedKurs;
  var _loadedInitData = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    displayedKurs = widget.availableKurs.toList();
    _loadedInitData = true;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kurslar'),
      ),
      body: ListView.builder(
          itemBuilder: (ctx, index) {
            return CourseWidget(
                courseName: displayedKurs[index].courseName,
                imageUrl: displayedKurs[index].imageUrl,
                date: displayedKurs[index].date);
          },
          itemCount: displayedKurs.length),
    );
  }
}
