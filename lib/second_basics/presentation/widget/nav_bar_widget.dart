import 'package:flutter/material.dart';
import 'package:flutter_practice/second_basics/data/value_notifier_widget.dart';

class NavBarWidget extends StatefulWidget {
  const NavBarWidget({super.key});

  @override
  State<NavBarWidget> createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      builder: (context, selectedPage, child) {
        return NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          ],
          selectedIndex: selectedPageNotifier.value,
          onDestinationSelected: (value) {
            setState(() {
              selectedPageNotifier.value = value;
            });
          },
        );
      },
      valueListenable: selectedPageNotifier,
    );
  }
}
