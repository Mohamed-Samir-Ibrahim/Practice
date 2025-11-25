import 'package:flutter/material.dart';

class ContainerWidget extends StatefulWidget {
  const ContainerWidget({super.key});

  @override
  State<ContainerWidget> createState() => _ContainerWidgetState();
}

class _ContainerWidgetState extends State<ContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Flutter'),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          color: Colors.blue,
          child: Container(
            height: 100,
            width: 100,
            margin: EdgeInsets.all(30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.red,
            ),
            child: Text('Hello', style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
