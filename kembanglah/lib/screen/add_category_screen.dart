import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddCategoryScreen extends StatelessWidget{
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final Controller2 = TextEditingController();
  final Controller1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Tambah Kategori"),
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
                        primary: Color(0xff00A38C),
                        minimumSize: Size(350, 40),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                5.0)), // double.infinity is the width and 30 is the height
                      ),
                      onPressed: () {

                      },
                      child: Text('Tambah Kategori')),
                  SizedBox(height: 15,),
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
                      onPressed: () {

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