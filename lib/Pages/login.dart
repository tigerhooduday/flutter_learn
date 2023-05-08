import 'package:flutter/material.dart';
import 'package:flutter_learn/Pages/home.dart';
import '../utils/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/image/login.png",
                height: 110,
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Login Page",
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.orangeAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 40, horizontal: 60),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter Username", labelText: "USERNAME"),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter Password", labelText: "PASSWORD"),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("LOGIN"),
                      style: TextButton.styleFrom(minimumSize: Size(120, 50)),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
