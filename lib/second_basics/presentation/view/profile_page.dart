import 'package:flutter/material.dart';
import 'package:flutter_practice/second_basics/presentation/view/login_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: TextButton(
        onPressed: () =>
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            ),
        child: Text('Logout',),
      ),
    );
  }
}
