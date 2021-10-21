import 'package:flutter/material.dart';
import 'package:learn/models/course.dart';
import 'package:learn/screens/home/widget/category_title.dart';
import 'package:learn/screens/home/widget/course_item.dart';

// ignore: use_key_in_widget_constructors
class FeatureCourse extends StatelessWidget {
  final coursesList = Course.generateCourses();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CategoryTitle('Top of the week', 'View All'),
        // ignore: sized_box_for_whitespace
        Container(
          height: 300,
          child: ListView.separated(
              padding: const EdgeInsets.all(25),
              scrollDirection: Axis.horizontal,
              itemCount: coursesList.length,
              itemBuilder: (context, index) => CourseItem(coursesList[index]),
              separatorBuilder: (context, index) => const SizedBox(width: 15)),
        )
      ],
    );
  }
}
