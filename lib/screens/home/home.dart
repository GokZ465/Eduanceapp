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
      bottomNavigationBar: _builtBottomNavigationBar(),
    );
  }

  BottomNavigationBar _builtBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: kBackground,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.only(bottom: 4),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: kAccent, width: 2))),
              child: Text(
                'Home',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            label: 'home'),
        BottomNavigationBarItem(
            label: 'calendar', icon: Icon(Icons.calendar_today_rounded)),
        BottomNavigationBarItem(
            label: 'bookmark', icon: Icon(Icons.bookmark_border_outlined)),
        BottomNavigationBarItem(
            label: 'user', icon: Icon(Icons.supervised_user_circle_rounded)),
      ],
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
