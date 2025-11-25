import 'package:flutter/material.dart';

class RowWidget extends StatefulWidget {
  const RowWidget({super.key});

  @override
  State<RowWidget> createState() => _RowWidgetState();
}

class _RowWidgetState extends State<RowWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Flutter'),
      ),
      body: Center(
        child: Container(
          color: Colors.green,
          height: double.infinity,
          child: Row(
            mainAxisAlignment: .start,
            crossAxisAlignment: .center,
            mainAxisSize: .max,
            children: [
              Container(color: Colors.red, width: 100, height: 100),
              Container(color: Colors.blue, width: 100, height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
