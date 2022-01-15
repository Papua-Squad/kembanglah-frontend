import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Response;
import 'package:http/http.dart';
import 'package:http/http.dart';
import 'package:kembanglah/api/url_api.dart';
import 'package:kembanglah/screen/Customer/login_user_screen.dart';

class RegistUserScreen extends StatefulWidget {
  const RegistUserScreen({Key? key}) : super(key: key);

  @override
  _RegistUserScreenState createState() => _RegistUserScreenState();
}

class _RegistUserScreenState extends State<RegistUserScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final ControllerEmail = TextEditingController();
  final ControllerUsername = TextEditingController();
  final ControllerPassword = TextEditingController();
  final ControllerMitra = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned(
          top: 0,
          right: 0,
          left: 0,
          child: Container(
            height: 210,
            width: 360,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/header.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Positioned(
          top: 160,
          left: 0,
          right: 0,
          child: Container(
            height: 500,
            padding: EdgeInsets.all(15),
            width: MediaQuery.of(context).size.width - 40,
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 15,
                    spreadRadius: 4,
                  )
                ]),
            child: Column(
              children: [
                Row(children: [
                  Column(
                    children: [
                      Image.asset('assets/images/kembanglah.png',
                          width: 250, height: 35),
                    ],
                  ),
                ]),
                Container(
                  margin: EdgeInsets.all(12),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        buildTextField("Username", ControllerUsername, false),
                        buildTextField("Password", ControllerPassword, true),
                        buildTextField("Nama User", ControllerMitra, false),
                        buildTextField("Email User", ControllerEmail, false),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 540,
          right: 0,
          left: 0,
          child: Center(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(5),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff00A38C),
                        minimumSize: Size(340, 60),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ), // double.infinity is the width and 30 is the height
                      ),
                      onPressed: () async {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'REGISTER',
                        style: TextStyle(),
                      )),
                ),
                Center(
                  child: Text("Already have account?"),
                ),
                Center(
                  child: TextButton(
                      onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginUserScreen()));
                      },
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      )),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }

  Widget buildTextField(
      String hintText, TextEditingController textController, bool isObscure) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: TextFormField(
        obscureText: isObscure,
        controller: textController,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter some ' + hintText;
          }
          return null;
        },
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black54),
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black54),
            borderRadius: BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 18, color: Colors.black54),
        ),
      ),
    );
  }
}
