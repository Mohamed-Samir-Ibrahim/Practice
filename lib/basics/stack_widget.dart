import 'package:flutter/material.dart';

class StackWidget extends StatefulWidget {
  const StackWidget({super.key});

  @override
  State<StackWidget> createState() => _StackWidgetState();
}

class _StackWidgetState extends State<StackWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Flutter'),
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/images/Cat_November_2010-1a.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          Text('Hello', style: TextStyle(color: Colors.white, fontSize: 50)),
          Icon(Icons.eleven_mp, color: Colors.white),
        ],
      ),
    );
  }
}
