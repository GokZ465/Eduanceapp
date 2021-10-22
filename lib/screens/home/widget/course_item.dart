// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:learn/constants/colors.dart';
import 'package:learn/models/course.dart';
import 'package:learn/screens/detail/widget/detail.dart';

class CourseItem extends StatelessWidget {
  final Course course;
  // ignore: prefer_const_constructors_in_immutables
  CourseItem(this.course);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 250,
          width: 250,
          decoration: BoxDecoration(
              color: kPrimaryLight, borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              const Expanded(
                flex: 2,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  // child: Image.asset(
                  //   course.imageUrl,
                  //   fit: BoxFit.fill,
                  // )
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            //Image.asset(
                            //course.authorImg,
                            //width: 20,
                            //),
                            const SizedBox(width: 5),
                            Text(
                              course.author,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text(
                              course.title,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: kFont),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(horizontal: 5),
                              width: 5,
                              height: 5,
                              decoration: const BoxDecoration(
                                  color: kFontLight, shape: BoxShape.circle),
                            ),
                            const Text(
                              '2h 22min',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: kFontLight,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ),
        Positioned(
          bottom: 60,
          right: 20,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: kAccent,
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15))),
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => DetailPage(course)));
            },
            child: const Text('Start'),
          ),
        ),
      ],
    );
  }
}
