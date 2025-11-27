import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key, required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'hero 1',
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 50.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.teal,
        ),
        child: Text(
          title, style: TextStyle(color: Colors.white, fontSize: 30,),),
      ),
    );
  }
}
