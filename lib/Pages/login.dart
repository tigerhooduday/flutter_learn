import 'package:flutter/material.dart';
import 'package:flutter_learn/Pages/home.dart';
import '../utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changebutton = false;
  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext, context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changebutton = true;
      });
      await Future.delayed(Duration(seconds: 2));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changebutton = false;
      });
    }
  }

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
                "Welcome $name ",
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
                child: Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: "Enter Username", labelText: "USERNAME"),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter UserName';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Enter Password", labelText: "PASSWORD"),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter Password';
                          } else if (value.length < 6) {
                            return 'Password canoot be less then 6 digit';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Material(
                        borderRadius:
                            BorderRadius.circular(changebutton ? 15 : 1),
                        color: Colors.deepOrange,
                        child: InkWell(
                          splashColor: Colors.black,
                          onTap: () => moveToHome(BuildContext, context),
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            height: 50,
                            width: changebutton ? 80 : 210,
                            alignment: Alignment.center,
                            child: changebutton
                                ? Icon(Icons.done, color: Colors.white)
                                : Text(
                                    "LOGIN",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                          ),
                        ),
                      )
                      // ElevatedButton(
                      //   onPressed: () {
                      //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                      //   },
                      //   child: Text("LOGIN"),
                      //   style: TextButton.styleFrom(minimumSize: Size(120, 50)),
                      // )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
