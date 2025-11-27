import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  TextEditingController controller = TextEditingController();
  bool? isChecked = false;
  String? menuValue = 'e1';
  bool isSwitched = false;
  double sliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(onPressed: () => Navigator.pop(context)),
        title: Text('Settings'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Title'),
                        content: Text('Content'),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text('Close'),
                          ),
                        ],
                      );
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.amber,
                ),
                child: Text('Open Dialog'),
              ),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text('Content')));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.amber,
                ),
                child: Text('Open SnackBar'),
              ),
              DropdownButton(
                value: menuValue,
                items: [
                  DropdownMenuItem(value: 'e1', child: Text('Element 1')),
                  DropdownMenuItem(value: 'e2', child: Text('Element 2')),
                  DropdownMenuItem(value: 'e3', child: Text('Element 3')),
                ],
                onChanged: (value) {
                  setState(() {
                    menuValue = value;
                  });
                },
              ),
              Divider(
                thickness: 5.0,
                endIndent: 200.0,
                color: Colors.tealAccent,
              ),
              TextField(
                controller: controller,
                decoration: InputDecoration(border: OutlineInputBorder()),
                onEditingComplete: () {
                  setState(() {});
                },
              ),
              Text(controller.text),
              Checkbox.adaptive(
                tristate: true,
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value;
                  });
                },
              ),
              CheckboxListTile.adaptive(
                title: Text('Clicked'),
                tristate: true,
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value;
                  });
                },
              ),
              Switch.adaptive(
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
              ),
              SwitchListTile.adaptive(
                title: Text('Switched'),
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
              ),
              Slider(
                max: 10.0,
                divisions: 2,
                value: sliderValue,
                onChanged: (value) {
                  setState(() {
                    sliderValue = value;
                  });
                },
              ),
              InkWell(
                onTap: () {
                  print('Tapped');
                },
                child: Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.blueAccent,
                ),
              ),
              ElevatedButton(
                onPressed: () => print('ElevatedButton'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.amber,
                ),
                child: Text('Click Me'),
              ),
              FilledButton(
                onPressed: () => print('FilledButton'),
                style: FilledButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.amber,
                ),
                child: Text('Click Me'),
              ),
              TextButton(
                onPressed: () => print('TextButton'),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.amber,
                ),
                child: Text('Click Me'),
              ),
              OutlinedButton(
                onPressed: () => print('OutlinedButton'),
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.amber,
                ),
                child: Text('Click Me'),
              ),
              CloseButton(),
              BackButton(),
            ],
          ),
        ),
      ),
    );
  }
}
