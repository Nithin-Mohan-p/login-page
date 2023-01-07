import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:luminar/main.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text("LOGIN SCREEN"),
      ),
      body: Column(
        children: [
          const Text(
            "LOGIN PAGE",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.red),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Ender your name",
                labelText: "User name",
                prefixIcon: const Icon(Icons.account_box_sharp),
                suffixIcon: const Icon(Icons.visibility),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
            child: TextField(
              obscureText: true,
              obscuringCharacter: '*',
              decoration: InputDecoration(
                hintText: "Ender your password",
                labelText: "Password",
                prefixIcon: const Icon(Icons.visibility_off),
                suffixIcon: const Icon(Icons.visibility),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Fluttertoast.showToast(
                  msg: "Check Your Password",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.CENTER,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.red,
                  textColor: Colors.white,
                  fontSize: 16.0);
            },
            child: const Text("LOGIN"),
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () {},
            child: const Text("Not a user'register her"),
          ),
        ],
      ),
    );
  }
}
