import 'package:flutter/material.dart';
import 'package:flutter_practice/second_basics/presentation/view/activity_page.dart';
import 'package:flutter_practice/second_basics/presentation/widget/custom_courses_widget.dart';
import 'package:flutter_practice/second_basics/presentation/widget/hero_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> contentsList = ['Flutter', 'Web', 'AI'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 4,
                  child: GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ActivityPage()),
                    ),
                    child: HeroWidget(title: 'Home'),
                  ),
                ),
                SizedBox(height: 15),
                ...List.generate(
                  contentsList.length,
                  (index) => CustomCoursesWidget(
                    content: contentsList.elementAt(index),
                    description: 'This is a Description',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
