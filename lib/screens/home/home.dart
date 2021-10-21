import 'package:flutter/material.dart';
import 'package:learn/constants/colors.dart';
import 'package:learn/screens/home/widget/active_course.dart';
import 'package:learn/screens/home/widget/emoji_text.dart';
import 'package:learn/screens/home/widget/feature_course.dart';
import 'package:learn/screens/home/widget/search_input.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const EmojiText(),
          const SearchInput(),
          FeatureCourse(),
          const ActiveCourse(),
        ],
      )),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: kBackground,
      elevation: 0,
      centerTitle: false,
      title: const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            'Hello Ruize!',
            style: TextStyle(fontSize: 16, color: kFontLight),
          )),
      actions: [
        Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10, right: 20),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  border:
                      Border.all(color: kFontLight.withOpacity(0.3), width: 2),
                  borderRadius: BorderRadius.circular(15)),
              child: const Icon(
                Icons.circle_notifications_outlined,
                color: Colors.black,
                size: 30,
              ),
            ),
            Positioned(
                top: 15,
                right: 30,
                child: Container(
                  height: 8,
                  width: 8,
                  decoration: const BoxDecoration(
                      color: kAccent, shape: BoxShape.circle),
                ))
          ],
        )
      ],
    );
  }
}
