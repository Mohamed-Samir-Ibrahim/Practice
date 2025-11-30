import 'package:flutter/material.dart';
import 'package:flutter_practice/second_basics/core/constants.dart';
import 'package:flutter_practice/second_basics/data/value_notifier_widget.dart';

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
    return ValueListenableBuilder(
      valueListenable: isDarkModeNotifier,
      builder: (context, isDarkMode, child) {
        return Container(
          width: double.infinity,
          height: 70,
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(color: isDarkMode ? Colors.black : Colors.white),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Text(content, style: Styles.kContent),
                SizedBox(height: 10),
                Text(description, style: Styles.kDescription),
              ],
            ),
          ),
        );
      },
    );
  }
}
