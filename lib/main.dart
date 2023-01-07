import 'dart:async';

import 'package:flutter/material.dart';
import 'package:luminar/home.dart';

//splash screen projuct

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.blue),
    debugShowCheckedModeBanner: false,
    home: const Splashscreen(),
  ));
}

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Home(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        ///color: Colors.grey,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/icons/new.jpg"),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Image(
                image: AssetImage("assets/icons/cat.png"),
                height: 100,
                width: 100,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "My Pet App",
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
