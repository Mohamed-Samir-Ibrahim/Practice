import 'package:flutter/material.dart';
import 'package:flutter_practice/second_basics/presentation/view/widget_tree.dart';
import 'package:flutter_practice/second_basics/presentation/widget/hero_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            HeroWidget(title: 'Login'),
            SizedBox(height: 20.0,),
            TextField(
              controller: emailController,
              decoration: InputDecoration(border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0,),),
                  hintText: 'Email'),
              onEditingComplete: () {
                setState(() {});
              },
            ),
            SizedBox(height: 20.0,),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10,),),
                  hintText: 'Password'),
              onEditingComplete: () {
                setState(() {});
              },
            ),
            SizedBox(height: 10.0,),
            ElevatedButton(
              onPressed: () =>
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => WidgetTree(),)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.amber,
              ),
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
