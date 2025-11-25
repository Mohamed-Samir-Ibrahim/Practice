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
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Flutter'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: .center, children: []),
      ),
    );
  }
}
