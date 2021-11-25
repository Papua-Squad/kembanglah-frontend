import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListProductScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("List Product"),
        centerTitle: true,backgroundColor: Color(0xff00A38C),),
      body: Text("listProduct"),
    );
  }

}