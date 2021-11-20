import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BestSellerProductScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Tambah Product Best Seller"),
        centerTitle: true,backgroundColor: Color(0xff00A38C),),
      body: Text("BESTSELLER"),
    );
  }

}