import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:kembanglah/screen/Mitra/edit_category.dart';
class ListCategoryScreen extends StatefulWidget {
  @override
  _ListCategory createState() => _ListCategory();
}
class _ListCategory extends State<ListCategoryScreen>{
    late List data = [];
    final storage = FlutterSecureStorage();
    final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey = new GlobalKey<RefreshIndicatorState>();
    Future<String> getData() async{
      var token = await storage.read(key: "Token");

      var response = await get(
        Uri.parse('http://159.223.82.24:3000/api/category/'),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',},
      );
      setState(() {
        // Get the JSON data
        data = json.decode(response.body)['data'];
      });

      print(data);
      print(token);
      return "Successfull";
    }
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("List Category Product"),
          centerTitle: true
          ,backgroundColor: Color(0xff00A38C),),
        body: RefreshIndicator(
          key: _refreshIndicatorKey,
          onRefresh: _refresh,
          child:ListView.builder(
              itemCount: data == null ? 0 : data.length,
              itemBuilder: (BuildContext context, int index) {
                return Center(
                    child: GestureDetector(
                      child: Container(
                        margin: EdgeInsets.only(top: 10,bottom: 10),
                        height: 40,
                        padding: EdgeInsets.all(10),
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5),
                              bottomLeft: Radius.circular(5),
                              bottomRight: Radius.circular(5)
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 2,),
                          ],
                        ),
                        child:  Row(
                          children: [
                            Text(data[index]['name']),
                          ],
                        ),
                      ),
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => EditCategory(data[index]['id'],data[index]['name'],data[index]['type'])));
                      },
                    )
                );
              }),),

      );
    }
    @override
    void initState() {
      this.getData();
    }
    Future<Null> _refresh() {
      return getData().then((_data) {
        setState(() => _data = data.toString());
      });
    }
  }