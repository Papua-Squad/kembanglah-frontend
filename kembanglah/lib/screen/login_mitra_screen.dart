import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kembanglah/screen/home_screen.dart';

class LoginMitraScreen extends StatefulWidget {
  @override
  _LoginMitraScreen createState() => _LoginMitraScreen();
}

class _LoginMitraScreen extends State<LoginMitraScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final Controller2 = TextEditingController();
  final Controller1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff00A38C),
      ),
      body: SingleChildScrollView(
        child: Stack(
            clipBehavior: Clip.none, children: [
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
          Container(
            padding: EdgeInsets.all(25),
            child: Center(
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 140,
                    ),
                    Card(
                        margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                        elevation: 15,
                        shadowColor: Colors.black,
                        child: Container(
                          color: Colors.white,
                          padding: EdgeInsets.all(25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('assets/images/kembanglah.png'),
                              SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                controller: Controller1,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Color(0xff00A38C),)
                                  ),
                                  labelText: "Username",
                                  labelStyle: TextStyle(color: Color(0xff00A38C),),
                                  contentPadding: EdgeInsets.all(20.0),),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Masukan Username !';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 10),
                              TextFormField(
                                controller: Controller2,
                                obscureText: true,
                                enableSuggestions: false,
                                autocorrect: false,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Color(0xff00A38C),)
                                  ),
                                  labelText: "Password",
                                  labelStyle: TextStyle(color: Color(0xff00A38C),),
                                  contentPadding: EdgeInsets.all(20.0),),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Masukan Password !';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 10),
                              Center(
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Color(0xff00A38C),
                                      minimumSize: Size(350, 40),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              5.0)), // double.infinity is the width and 30 is the height
                                    ),
                                    onPressed: () {
                                      if (_formKey.currentState!.validate()) {
                                        Get.offAllNamed('/HomeScreen');
                                      }
                                    },
                                    child: Text(
                                      'LOGIN',
                                      style: TextStyle(),
                                    )),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Center(
                                child: Text("Don't have account?"),
                              ),
                              Center(
                                child: TextButton(
                                    onPressed: () {
                                      Get.toNamed('/RegistMitraScreen');
                                    },
                                    child: Text(
                                      "Sign Up",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    )),
                              )
                            ],
                          ),
                        )),
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
