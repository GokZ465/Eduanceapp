import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn/models/course.dart';
import 'package:learn/screens/detail/widget/course_description.dart';
import 'package:learn/screens/detail/widget/custom_app_bar.dart';
import 'package:learn/screens/home/widget/course_progress.dart';

class DetailPage extends StatelessWidget {
  final Course course;
  DetailPage(this.course);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomAppBar(course),
          CourseDescription(course),
          CourseProgress(),
        ],
      ),
    ));
  }
}
