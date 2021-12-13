import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class EditCategory extends StatefulWidget{
  int id;
  String name,type;
  EditCategory(this.id,this.name,this.type);
  @override
  _EditCategory createState() => _EditCategory();

}
class _EditCategory extends State<EditCategory>{
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final Controller2 = TextEditingController();
  final Controller1 = TextEditingController();
  final storage = FlutterSecureStorage();
  List data = [];
  @override
  void initState() {
    super.initState();
      Controller1.text = widget.name;
      Controller2.text = widget.type;
  }

  void clearText(){
    Controller1.clear();
    Controller2.clear();
  }

  @override
  Widget build(BuildContext context) {
    print(widget.id);
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(onPressed: () async {
              var token = await storage.read(key: "Token");
              var id = widget.id;
              var response = await delete(
                Uri.parse('http://159.223.82.24:3000/api/category/$id'),
                headers: {
                  'Content-Type': 'application/json',
                  'Accept': 'application/json',
                  'Authorization': 'Bearer $token',},
              );
              if(response.statusCode == 200) Get.back();
            }, icon: Icon(Icons.delete))
          ],
          title: Text("Edit Kategori"),
          centerTitle: true,backgroundColor: Color(0xff00A38C),),
        body: SingleChildScrollView(
          child:  Container(
            padding: EdgeInsets.all(25),
            child: Center(
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20,),
                    TextFormField(
                      controller: Controller1,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff00A38C),)
                        ),
                        labelText: "Nama Kategori",
                        labelStyle: TextStyle(color: Color(0xff00A38C),),
                        contentPadding: EdgeInsets.all(20.0),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Masukan Nama Kategori !';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20,),
                    TextFormField(
                      controller: Controller2,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff00A38C),)
                        ),
                        border: OutlineInputBorder(
                        ),
                        labelStyle: TextStyle(color: Color(0xff00A38C),),
                        labelText: "Jenis Kategori",
                        contentPadding: EdgeInsets.all(20.0),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Masukan Jenis Kategori !';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 260,),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          side: BorderSide(
                              color: Color(0xff00A38C),
                              width: 2.0,
                              style: BorderStyle.solid),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          minimumSize: Size(
                              350, 40), // double.infinity is the width and 30 is the height
                        ),
                        onPressed: () async {
                          var token = await storage.read(key: "Token");
                          var id = widget.id;
                          var response = await put(
                            Uri.parse('http://159.223.82.24:3000/api/category/$id'),
                            headers: {
                              'Content-Type': 'application/json',
                              'Accept': 'application/json',
                              'Authorization': 'Bearer $token',},
                            body: json.encode({
                              'name': Controller1.text,
                              'type': Controller2.text,
                            }),
                          );
                          print(token);
                          if (_formKey.currentState!.validate() && response.statusCode == 200) {
                            clearText();
                            Get.back();
                          }else if(response.statusCode != 200 && _formKey.currentState!.validate()){
                            print(response.body);
                            showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title: const Text('Pemberitahuan'),
                                content: const Text('Category Gagal Diedit'),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () => Navigator.pop(context),
                                    child: const Text('OK'),
                                  ),
                                ],
                              ),
                            );
                          }
                        },
                        child: Text(
                          'Edit Kategori',
                          style: TextStyle(
                            color: Color(0xff00A38C),
                          ),
                        ))
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }

}