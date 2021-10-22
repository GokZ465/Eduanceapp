import 'package:flutter/material.dart';
import 'package:learn/constants/colors.dart';
import 'package:learn/models/module.dart';
import 'package:learn/screens/detail/widget/course_module.dart';

class CourseProgress extends StatelessWidget {
  final moduleList = Module.generateModule();
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(25),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'The Progress',
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold, color: kFont),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Image.network(
                      'https://cdn.iconscout.com/icon/premium/png-256-thumb/grid-application-menu-artboard-layer-6-16269.png',
                      width: 25,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Image.network(
                      'https://www.freeiconspng.com/thumbs/list-icon/checklist-icon-checklist-icon-png-list-icon-7.png',
                      width: 25,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 15),
            ...moduleList.map((e) => CourseModule(e)).toList()
            //CourseModule(moduleList[0]),
          ],
        ));
  }
}
