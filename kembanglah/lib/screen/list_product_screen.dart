import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'dart:convert';

class ListProductScreen extends StatefulWidget {
  @override
  _ListProduct createState() => _ListProduct();
}

class _ListProduct extends State<ListProductScreen> {
  late List dataProduct = [];
  final storage = FlutterSecureStorage();

  Future<String> getDataProduct() async {
    var token = await storage.read(key: "Token");
    var idUser = await storage.read(key: "UserId");

    var response = await get(
      Uri.parse('http://159.223.82.24:3000/api/product/seller/$idUser'),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer $token'
      },
    );
    setState(() {
      // Get the JSON data
      dataProduct = json.decode(response.body)['data'];
    });

    print("id user : $idUser");
    return "Successfull";
  }

  @override
  void initState() {
    this.getDataProduct();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () async {
                var token = await storage.read(key: "Token");
                var idUser = await storage.read(key: "UserId");

                var response = await get(
                  Uri.parse(
                      'http://159.223.82.24:3000/api/product/seller/$idUser'),
                  headers: {
                    'Content-Type': 'application/json',
                    'Accept': 'application/json',
                    'Authorization': 'Bearer $token',
                  },
                );
                setState(() {
                  // Get the JSON data
                  dataProduct = json.decode(response.body)['data'];
                });
              },
              icon: Icon(Icons.refresh))
        ],
        title: Text("List Product"),
        centerTitle: true,
        backgroundColor: Color(0xff00A38C),
      ),
      body: ListView.builder(
          itemCount: dataProduct == null ? 0 : dataProduct.length,
          itemBuilder: (BuildContext context, int index) {
            return Center(
              child: GestureDetector(
                child: Container(
                  height: 100,
                  padding: EdgeInsets.all(16),
                  width: MediaQuery.of(context).size.width - 40,
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 15,
                          spreadRadius: 4,
                        )
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                  image: AssetImage("assets/images/bunga.png"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  dataProduct[index]['name'],
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff808080),
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  dataProduct[index]['stock'].toString(),
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xff808080),
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  dataProduct[index]['price'].toString(),
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xff808080),
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                              ],
                            ),
                          ]),
                      SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => EditCategory(dataProduct[index]['id'],dataProduct[index]['name'],dataProduct[index]['type'])));
                },
              ),
            );
          }),
    );
  }
}
