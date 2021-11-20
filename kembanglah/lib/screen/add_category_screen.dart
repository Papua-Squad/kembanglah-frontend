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
                  Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
                      elevation: 15,
                      shadowColor: Colors.black,
                      child:
                      Container(
                        color: Colors.white,
                        padding: EdgeInsets.all(25),
                        child:  Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10,),
                            TextFormField(
                              controller: Controller1,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "Nama Kategori",
                                contentPadding: EdgeInsets.all(20.0),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Masukan Nama Kategori !';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 10),
                          ],
                        ),
                      )
                  ),
                  Card(
                      margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
                      elevation: 15,
                      shadowColor: Colors.black,
                      child: Container(
                        color: Colors.white,
                        padding: EdgeInsets.all(25),
                        child:  Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10,),
                            TextFormField(
                              controller: Controller2,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
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
                            SizedBox(height: 10),
                          ],
                        ),
                      )
                  ),

                ],
              ),
            ),
          ),
        ),
      )
    );
  }

}