import 'package:flutter/material.dart';

class ListTileWidgetAndPrintFunction extends StatefulWidget {
  const ListTileWidgetAndPrintFunction({super.key});

  @override
  State<ListTileWidgetAndPrintFunction> createState() =>
      _ListTileWidgetAndPrintFunctionState();
}

class _ListTileWidgetAndPrintFunctionState
    extends State<ListTileWidgetAndPrintFunction> {
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
                SizedBox(height: 50),
                Container(
                  width: 200,
                  padding: EdgeInsets.only(left: 40),
                  color: Colors.transparent,
                  child: ListTile(
                    title: Text('Mohamed'),
                    onTap: () => print('Mohamed is printed'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
