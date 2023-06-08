import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class AnalyticsData {
  final Color color;
  final double averageNum;
  final int givenNumber;
  final String title;
  final IconData icon;

  AnalyticsData({
    this.color,
    this.averageNum,
    this.givenNumber,
    this.title,
    this.icon,
  });
}

List<AnalyticsData> _data = <AnalyticsData>[
  AnalyticsData(
    color: Color(0xFF090250),
    icon: FontAwesome.arrow_up,
    averageNum: 97.7,
    givenNumber: 20237,
    title: "Transaction Success",
  ),
  AnalyticsData(
    color: Color(0xFF033551),
    icon: FontAwesome.arrow_up,
    averageNum: 90,
    givenNumber: 2,
    title: "Response Rates",
  ),
  AnalyticsData(
    color: Color(0xFF562FBE),
    icon: FontAwesome.arrow_up,
    averageNum: 78.9,
    givenNumber: 1730,
    title: "Happy Feedbacks",
  ),
];

List<AnalyticsData> get data => _data;
