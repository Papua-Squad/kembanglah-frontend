import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(25.0),
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 320,
                ),
                TextFormField(
                  controller: Controller1,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Username",
                    contentPadding: EdgeInsets.all(20.0),
                  ),
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
                    labelText: "Password",
                    contentPadding: EdgeInsets.all(20.0),
                  ),
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

                        }
                      },
                      child: Text(
                        'LOGIN',
                        style: TextStyle(),
                      )),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
