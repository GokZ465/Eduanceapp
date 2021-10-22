import 'package:flutter/material.dart';
import 'package:learn/constants/colors.dart';

class Module {
  Color iconBorder;
  Color iconBg;
  Color iconColor;
  IconData icon;
  String title;
  String desc;
  Color moduleBorder;
  Color moduleBg;
  Color buttonColor;
  Color buttonFont;
  String time;
  String lesson;

  Module(
    this.iconBorder,
    this.iconBg,
    this.iconColor,
    this.icon,
    this.time,
    this.desc,
    this.moduleBorder,
    this.moduleBg,
    this.buttonColor,
    this.buttonFont,
    this.title,
    this.lesson,
  );

  static List<Module> generateModule() {
    return [
      Module(
          kAccent,
          kAccent,
          Colors.white,
          Icons.play_arrow_rounded,
          '22min',
          'How it all started',
          kPrimaryLight,
          kPrimaryLight,
          kPrimary,
          Colors.black45,
          'MODULE',
          '2 Lessons'),
      Module(
          kFontLight,
          Colors.white,
          kFontLight,
          Icons.lock_outline_rounded,
          '12 min',
          'what we didnt know about catastrophe',
          kPrimaryLight,
          Colors.white,
          Colors.grey.withOpacity(.2),
          Colors.grey,
          'MODULE 2',
          '2 lessons')
    ];
  }
}
