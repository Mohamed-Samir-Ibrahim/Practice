import 'package:flutter/material.dart';

class ColumnWidget extends StatefulWidget {
  const ColumnWidget({super.key});

  @override
  State<ColumnWidget> createState() => _ColumnWidgetState();
}

class _ColumnWidgetState extends State<ColumnWidget> {
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
          width: double.infinity,
          child: Column(
            mainAxisAlignment: .center,
            crossAxisAlignment: .start,
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
