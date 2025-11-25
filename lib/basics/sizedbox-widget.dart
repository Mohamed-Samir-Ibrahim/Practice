import 'package:flutter/material.dart';

class SizedBoxWidget extends StatefulWidget {
  const SizedBoxWidget({super.key});

  @override
  State<SizedBoxWidget> createState() => _SizedBoxWidgetState();
}

class _SizedBoxWidgetState extends State<SizedBoxWidget> {
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
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Text(
                  'Hello',
                  style: TextStyle(color: Colors.white, fontSize: 50),
                ),
                SizedBox(height: 50),
                Icon(Icons.eleven_mp, color: Colors.white),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
