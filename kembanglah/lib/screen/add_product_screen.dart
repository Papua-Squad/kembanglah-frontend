import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kembanglah/api/url_api.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AddProductScreen extends StatefulWidget {
  @override
  _AddProductScreenState createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  File? _imageFile;
  final ImagePicker _picker = ImagePicker();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final Controller1 = TextEditingController();
  final Controller2 = TextEditingController();
  final Controller3 = TextEditingController();
  final Controller4 = TextEditingController();
  final Controller5 = TextEditingController();
  final Controller6 = TextEditingController();
  final storage = FlutterSecureStorage();

  String? selectedValue;
  List categoryItemList = [];

  Future? getAllCategory() async {
    var response = await http.get(Uri.parse(ConstUrl.baseUrl + 'api/product/'));
    if (response.statusCode == 200) {
      var jsonData = json.decode(response.body);
      setState(() {
        categoryItemList = jsonData;
      });
    }
    print(categoryItemList);
  }

  @override
  void initState() {
    super.initState();
    getAllCategory();
  }

  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                      leading: new Icon(Icons.photo_library),
                      title: new Text('Photo Library'),
                      onTap: () {
                        _getFromGallery();
                        Navigator.of(context).pop();
                      }),
                  new ListTile(
                    leading: new Icon(Icons.photo_camera),
                    title: new Text('Camera'),
                    onTap: () {
                      _getFromCamera();
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }

  Future<String?> uploadImage(filename, url) async {
    var request = http.MultipartRequest(
        'POST', Uri.parse(ConstUrl.baseUrl + 'api/product/'));
    request.files.add(await http.MultipartFile.fromPath('picture', filename));
    var res = await request.send();

    return res.reasonPhrase;
  }

  String state = "";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("Tambah Product"),
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
                    TextFormField(
                      controller: Controller1,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Color(0xff00A38C),
                        )),
                        labelText: "Nama Produk",
                        labelStyle: TextStyle(
                          color: Color(0xff00A38C),
                        ),
                        contentPadding: EdgeInsets.all(20.0),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Masukan Nama Produk !';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: Controller2,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Color(0xff00A38C),
                        )),
                        labelText: "Harga Produk",
                        labelStyle: TextStyle(
                          color: Color(0xff00A38C),
                        ),
                        contentPadding: EdgeInsets.all(20.0),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Masukan Harga Produk !';
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
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Color(0xff00A38C),
                        )),
                        labelText: "Stok Produk",
                        labelStyle: TextStyle(
                          color: Color(0xff00A38C),
                        ),
                        contentPadding: EdgeInsets.all(20.0),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Masukan Stok Kategori !';
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
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Color(0xff00A38C),
                        )),
                        labelText: "Berat Produk",
                        labelStyle: TextStyle(
                          color: Color(0xff00A38C),
                        ),
                        contentPadding: EdgeInsets.all(20.0),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Masukan Berat Produk !';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    DropdownButton(
                      hint: Text("Pilih Kategori"),
                      value: selectedValue,
                      items: categoryItemList.map((categoryItemList) {
                        return DropdownMenuItem(
                          child: Text(categoryItemList),
                          value: categoryItemList,
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          selectedValue = value.toString();
                        });
                      },
                    ),
                    TextFormField(
                      controller: Controller3,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Color(0xff00A38C),
                        )),
                        labelText: "Jenis Produk",
                        labelStyle: TextStyle(
                          color: Color(0xff00A38C),
                        ),
                        contentPadding: EdgeInsets.all(20.0),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Masukan Jenis Produk !';
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
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Color(0xff00A38C),
                        )),
                        labelText: "Deskripsi Produk",
                        labelStyle: TextStyle(
                          color: Color(0xff00A38C),
                        ),
                        contentPadding: EdgeInsets.all(20.0),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Masukan Deskripsi Produk !';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      child: _imageFile == null
                          ? Container(
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.white,
                                      side: BorderSide(
                                          color: Color(0xff00A38C),
                                          width: 2.0,
                                          style: BorderStyle.solid),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0)),
                                      minimumSize: Size(370,
                                          60), // double.infinity is the width and 30 is the height
                                    ),
                                    onPressed: () {
                                      _showPicker(context);
                                    },
                                    child: Text(
                                      'Upload Produk',
                                      style: TextStyle(
                                        color: Color(0xff00A38C),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 40.0,
                                  ),
                                  // ElevatedButton(
                                  //   style: ElevatedButton.styleFrom(
                                  //     primary: Colors.white,
                                  //     side: BorderSide(
                                  //         color: Color(0xff00A38C),
                                  //         width: 2.0,
                                  //         style: BorderStyle.solid),
                                  //     shape: RoundedRectangleBorder(
                                  //         borderRadius:
                                  //             BorderRadius.circular(5.0)),
                                  //     minimumSize: Size(370,
                                  //         60), // double.infinity is the width and 30 is the height
                                  //   ),
                                  //   onPressed: () {
                                  //     _getFromCamera();
                                  //   },
                                  //   child: Text(
                                  //     'Upload Produk',
                                  //     style: TextStyle(
                                  //       color: Color(0xff00A38C),
                                  //     ),
                                  //   ),
                                  // ),
                                ],
                              ),
                            )
                          : Container(
                              child: Image.file(
                                _imageFile!,
                                fit: BoxFit.cover,
                              ),
                            ),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff00A38C),
                          minimumSize: Size(370, 40),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  5.0)), // double.infinity is the width and 30 is the height
                        ),
                        onPressed: () async {
                          // var token = await storage.read(key: "Token");
                          // Response _response = await post(
                          //   Uri.parse(ConstUrl.baseUrl + 'api/product/'),
                          //   headers: {
                          //     'Content-Type': 'application/json',
                          //     'Accept': 'application/json',
                          //     'Authorization': 'Bearer $token',
                          //   },
                          //   body: <String, dynamic>{
                          //     'name': Controller1.text,
                          //     'price': Controller2.text,
                          //     'stock': Controller3.text,
                          //     'weight': Controller4.text,
                          //     'description': Controller5.text,
                          //     'category_id': Controller6.text,
                          //     'image': 'test',
                          //   },
                          // );
                          // print(_response.body);
                          // if (_formKey.currentState!.validate() &&
                          //     _response.statusCode == 200) {
                          //   Navigator.pop(context);
                          // } else {
                          //   showDialog<String>(
                          //     context: context,
                          //     builder: (BuildContext context) => AlertDialog(
                          //       title: const Text(
                          //           'Pemberitahuan Username/Password salah'),
                          //       content: const Text(
                          //           'Apakah Username & Password anda masukan benar?'),
                          //       actions: <Widget>[
                          //         TextButton(
                          //           onPressed: () => Navigator.pop(context),
                          //           child: const Text('OK'),
                          //         ),
                          //       ],
                          //     ),
                          //   );
                          // }
                        },
                        child: Text('Tambah Produk')),
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
                        minimumSize: Size(370,
                            40), // double.infinity is the width and 30 is the height
                      ),
                      onPressed: () {},
                      child: Text(
                        'Edit Produk',
                        style: TextStyle(
                          color: Color(0xff00A38C),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }

  _getFromGallery() async {
    _imageFile = File(await ImagePicker()
        .pickImage(source: ImageSource.gallery)
        .then((pickedFile) => pickedFile!.path));
    print(_imageFile);
  }

  /// Get from Camera
  _getFromCamera() async {
    _imageFile = File(await ImagePicker()
        .pickImage(source: ImageSource.camera)
        .then((pickedFile) => pickedFile!.path));
  }
}

uploadFile(String name, String price, String stock, String weight,
    String description, String category_id) async {
  var postUri = Uri.parse(ConstUrl.baseUrl + 'api/product/');
  var request = new http.MultipartRequest("POST", postUri);
  request.fields['name'] = name;
  request.fields['price'] = price;
  request.fields['stock'] = stock;
  request.fields['weight'] = weight;
  request.fields['description'] = description;
  request.fields['category_id'] = category_id;
  request.files.add(new http.MultipartFile.fromBytes(
      'image', await File.fromUri(postUri).readAsBytes(),
      contentType: new MediaType('image', 'jpeg')));

  request.send().then((response) {
    if (response.statusCode == 200) print("Uploaded!");
  });
}
