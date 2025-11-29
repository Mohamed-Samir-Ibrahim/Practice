import 'package:flutter/material.dart';
import 'package:flutter_practice/second_basics/core/constants.dart';

class CustomCoursesWidget extends StatelessWidget {
  const CustomCoursesWidget({
    super.key,
    required this.content,
    required this.description,
  });

  final String content;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(content, style: Styles.kContent),
            SizedBox(height: 10),
            Text(description, style: Styles.kDescription),
          ],
        ),
      ),
    );
  }
}
