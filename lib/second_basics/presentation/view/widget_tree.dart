import 'package:flutter/material.dart';
import 'package:flutter_practice/second_basics/data/value_notifier_widget.dart';
import 'package:flutter_practice/second_basics/presentation/view/home_page.dart';
import 'package:flutter_practice/second_basics/presentation/view/profile_page.dart';
import 'package:flutter_practice/second_basics/presentation/view/setting_page.dart';
import 'package:flutter_practice/second_basics/presentation/widget/nav_bar_widget.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  List<Widget> pages = [HomePage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      builder: (context, isDarkMode, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Flutter'),
            centerTitle: true,
            automaticallyImplyLeading: false,
            actions: [
              IconButton(
                onPressed: () {
                  setState(() {
                    isDarkModeNotifier.value = !isDarkModeNotifier.value;
                  });
                },
                icon: Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SettingPage()),
                  );
                },
                icon: Icon(Icons.settings),
              ),
            ],
          ),
          body: ValueListenableBuilder(
            valueListenable: selectedPageNotifier,
            builder: (context, value, child) {
              return pages.elementAt(value);
            },
          ),
          bottomNavigationBar: NavBarWidget(),
        );
      },
      valueListenable: isDarkModeNotifier,
    );
  }
}
