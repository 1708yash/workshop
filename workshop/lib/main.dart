import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Workshop application',
    home: Login(),
  ));
}

// make a class and assign a stateless widget to it and name it Login for simple text
// scaffold is the visiting path for the single page have parts as appbun and body
class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  String currenEmail = "no email";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Login'), // text here is a weight
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 255, 0, 0),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              Image.network(
                'https://icons8.com/icon/VJz2Ob51dvZJ/website',
                width: 200,
                height: 200,
              ),
              const Text(
                'Login',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateColor.resolveWith(
                      (states) => const Color.fromARGB(255, 255, 0, 0)),
                ),
                onPressed: () {
                  setState(() {
                    currenEmail = emailController.text;
                  });
                },
                child: const Text('Login',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                currenEmail,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ));
  }
}
