import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:kembanglah/model/login_model.dart';

class EditProfileUser extends StatefulWidget {
  @override
  _EditProfile createState() => _EditProfile();
}

class _EditProfile extends State<EditProfileUser> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final Controller2 = TextEditingController();
  final Controller1 = TextEditingController();
  final Controller3 = TextEditingController();
  final Controller4 = TextEditingController();
  final Controller5 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Edit Profile"),
          centerTitle: true,
          backgroundColor: Color(0xff00A38C),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(25),
            child: Center(
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: Controller1,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Color(0xff00A38C),
                        )),
                        labelText: "Nama User",
                        labelStyle: TextStyle(
                          color: Color(0xff00A38C),
                        ),
                        contentPadding: EdgeInsets.all(20.0),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Masukan Nama Mitra !';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      readOnly: true,
                      controller: Controller2,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Color(0xff00A38C),
                        )),
                        border: OutlineInputBorder(),
                        labelStyle: TextStyle(
                          color: Color(0xff00A38C),
                        ),
                        labelText: "Username",
                        contentPadding: EdgeInsets.all(20.0),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Masukan Username!';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: Controller3,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Color(0xff00A38C),
                        )),
                        border: OutlineInputBorder(),
                        labelStyle: TextStyle(
                          color: Color(0xff00A38C),
                        ),
                        labelText: "Password",
                        contentPadding: EdgeInsets.all(20.0),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Masukan Password!';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: Controller4,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Color(0xff00A38C),
                        )),
                        border: OutlineInputBorder(),
                        labelStyle: TextStyle(
                          color: Color(0xff00A38C),
                        ),
                        labelText: "Ulangi Password",
                        contentPadding: EdgeInsets.all(20.0),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Masukan Validasi Password!';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: Controller5,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Color(0xff00A38C),
                        )),
                        border: OutlineInputBorder(),
                        labelStyle: TextStyle(
                          color: Color(0xff00A38C),
                        ),
                        labelText: "Upload Foto",
                        contentPadding: EdgeInsets.all(20.0),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Masukan Foto!';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff00A38C),
                          minimumSize: Size(350, 40),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  5.0)), // double.infinity is the width and 30 is the height
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Simpan Perubahan')),
                    SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          side: BorderSide(
                              color: Color(0xff00A38C),
                              width: 2.0,
                              style: BorderStyle.solid),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          minimumSize: Size(350,
                              40), // double.infinity is the width and 30 is the height
                        ),
                        onPressed: () {
                          Get.back();
                        },
                        child: Text(
                          'Batal',
                          style: TextStyle(
                            color: Color(0xff00A38C),
                          ),
                        ))
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
