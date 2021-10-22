import 'package:flutter/material.dart';
import 'package:learn/constants/colors.dart';
import 'package:learn/models/course.dart';

class CourseDescription extends StatelessWidget {
  final Course course;
  CourseDescription(this.course);
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Image.asset(
                  course.authorImg,
                  height: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  course.author,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  height: 5,
                  width: 5,
                  decoration: BoxDecoration(
                    color: kFontLight,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.access_time_filled,
                  size: 20,
                  color: kAccent,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '1h 36 min',
                  style: TextStyle(
                      color: kFont, fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              course.title,
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 22, color: kFont),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'How we developed speech adn how it \n became such a powerful theme let\'s see',
              style: TextStyle(
                  wordSpacing: 2,
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                  color: kFontLight),
            )
          ],
        ));
  }
}
