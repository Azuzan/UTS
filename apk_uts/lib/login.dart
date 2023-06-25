import 'package:apk_uts/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => HomepageState();
}

class HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Homepage"),
        backgroundColor: Colors.green[400],
        ),
        
    );
  }
}
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => LoginState();
}

class LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        backgroundColor: Colors.green[400],
        ),
        body: Padding(
        padding: const EdgeInsets.all(8.0),
         child: Column(
          children: [
            const TextField(
            decoration: InputDecoration(labelText:"UserName"),
            ),
            const TextField(obscureText: true,
            decoration: InputDecoration(labelText: "Password"),
            ),
            const SizedBox(
              height: 10.0,
            ),
            ElevatedButton(
              onPressed: () {Navigator.pushReplacement(
                      context, 
                      MaterialPageRoute(builder: (context) => const MyApp()),
                      );}, style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green), 
                child: const Text("Login"),)
            ],
          ),
       ),

    );
  }
}