import 'package:flutter/material.dart';
import 'package:flutter_practice/second_basics/presentation/view/login_page.dart';
import 'package:flutter_practice/second_basics/presentation/view/widget_tree.dart';
import 'package:lottie/lottie.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Lottie.asset('assets/lotties/HiHello.json', width: double.infinity,
              height: 200),
          ElevatedButton(
            onPressed: () =>
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage(),),),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              foregroundColor: Colors.amber,
            ),
            child: Text('Login'),
          ),
          SizedBox(height: 30,),
          ElevatedButton(
            onPressed: () =>
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => WidgetTree(),),),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              foregroundColor: Colors.amber,
            ),
            child: Text('Get Started'),
          ),
        ],
      ),
    );
  }
}
