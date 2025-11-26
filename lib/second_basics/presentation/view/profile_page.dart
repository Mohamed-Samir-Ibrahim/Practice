import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController controller = TextEditingController();
  bool? isChecked = false;
  bool isSwitched = false;
  double sliderValue = 0.0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            DropdownButton(
              items: [DropdownMenuItem(child: Text('Element 1'))],
              onChanged: (value) {},
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
    );
  }
}
