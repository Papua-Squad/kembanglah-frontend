import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecomendedProductScreen extends StatelessWidget{
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final Controller2 = TextEditingController();
  final Controller1 = TextEditingController();
  final Controller3 = TextEditingController();
  final Controller4 = TextEditingController();
  final Controller5 = TextEditingController();
  final Controller6 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Tambah Recomended Product"),
        centerTitle: true,backgroundColor: Color(0xff00A38C),),
      body:SingleChildScrollView(
        child:  Container(
          padding: EdgeInsets.all(25),
          child: Center(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Nama Product"),
                  TextFormField(
                    controller: Controller1,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff00A38C),)
                      ),
                      labelText: "Nama Produk",
                      labelStyle: TextStyle(color: Color(0xff00A38C),),
                      contentPadding: EdgeInsets.all(20.0),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Masukan Nama Produk !';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    controller: Controller2,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff00A38C),)
                      ),
                      labelText: "Harga Produk",
                      labelStyle: TextStyle(color: Color(0xff00A38C),),
                      contentPadding: EdgeInsets.all(20.0),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Masukan Harga Produk !';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    controller: Controller3,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff00A38C),)
                      ),
                      labelText: "Stok Produk",
                      labelStyle: TextStyle(color: Color(0xff00A38C),),
                      contentPadding: EdgeInsets.all(20.0),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Masukan Stok Kategori !';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    controller: Controller3,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff00A38C),)
                      ),
                      labelText: "Berat Produk",
                      labelStyle: TextStyle(color: Color(0xff00A38C),),
                      contentPadding: EdgeInsets.all(20.0),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Masukan Berat Produk !';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20,),
                  Text("Category Product"),
                  TextFormField(
                    controller: Controller3,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff00A38C),)
                      ),
                      labelText: "Jenis Produk",
                      labelStyle: TextStyle(color: Color(0xff00A38C),),
                      contentPadding: EdgeInsets.all(20.0),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Masukan Jenis Produk !';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    controller: Controller3,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff00A38C),)
                      ),
                      labelText: "Deskripsi Produk",
                      labelStyle: TextStyle(color: Color(0xff00A38C),),
                      contentPadding: EdgeInsets.all(20.0),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Masukan Deskripsi Produk !';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20,),
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
                      child: Text('Tambah Rekomendasi')),
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
                        'Edit Rekomendasi',
                        style: TextStyle(
                          color: Color(0xff00A38C),
                        ),
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}