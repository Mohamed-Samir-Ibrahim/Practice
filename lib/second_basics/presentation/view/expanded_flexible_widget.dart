import 'package:flutter/material.dart';

class ExpandedFlexibleWidget extends StatelessWidget {
  const ExpandedFlexibleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Expanded and Flexible'), centerTitle: true),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(color: Colors.blue, child: Text('Hello')),
              ),
              Flexible(
                child: Container(color: Colors.green, child: Text('Hello')),
              ),
            ],
          ),
          Divider(),
          Row(
            children: [
              Flexible(
                child: Container(color: Colors.green, child: Text('Hello')),
              ),
              Expanded(
                child: Container(color: Colors.blue, child: Text('Hello')),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
