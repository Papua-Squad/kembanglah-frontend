import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:http_parser/http_parser.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kembanglah/api/url_api.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'package:path/path.dart';

class AddProductScreen extends StatefulWidget {
  @override
  _AddProductScreenState createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  File? _imageFile;
  final ImagePicker _picker = ImagePicker();
  late List dataCategory = [];

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final Controller1 = TextEditingController();
  final Controller2 = TextEditingController();
  final Controller3 = TextEditingController();
  final Controller4 = TextEditingController();
  final Controller5 = TextEditingController();
  final Controller6 = TextEditingController();
  final storage = FlutterSecureStorage();

  String? _selectedValue;

  Future<String> getDataCategory() async {
    var token = await storage.read(key: "Token");
    var response = await get(
      Uri.parse('http://159.223.82.24:3000/api/category/'),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
      },
    );
    setState(() {
      // Get the JSON data
      dataCategory = json.decode(response.body)['data'];
    });
    var hasil_map = dataCategory.map((e) => e).toList();
    print(hasil_map.map((e) => e).toList());
    print(hasil_map.toString());

    return "Successfull";
  }

  @override
  void initState() {
    super.initState();
    this.getDataCategory();
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
                      controller: Controller4,
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
                        value: _selectedValue,
                        items: dataCategory.map((data) {
                          print(data['id']);
                          return DropdownMenuItem(
                            child: Text(data['name']),
                            value: data['id'].toString(),
                          );
                        }).toList(),
                        onChanged: (value) {
                          print("data from value $value");
                          setState(() {
                            _selectedValue = value.toString();
                          });
                          print("data from selected $_selectedValue");
                        }),
                    // TextFormField(
                    //   controller: Controller3,
                    //   decoration: InputDecoration(
                    //     border: OutlineInputBorder(),
                    //     focusedBorder: OutlineInputBorder(
                    //         borderSide: BorderSide(
                    //       color: Color(0xff00A38C),
                    //     )),
                    //     labelText: "Jenis Produk",
                    //     labelStyle: TextStyle(
                    //       color: Color(0xff00A38C),
                    //     ),
                    //     contentPadding: EdgeInsets.all(20.0),
                    //   ),
                    //   validator: (value) {
                    //     if (value == null || value.isEmpty) {
                    //       return 'Masukan Jenis Produk !';
                    //     }
                    //     return null;
                    //   },
                    // ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: Controller5,
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
                          uploadFile(
                              Controller1.text,
                              Controller2.text,
                              Controller3.text,
                              Controller4.text,
                              Controller5.text,
                              _selectedValue.toString(),
                              _imageFile!);
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
    String description, String category_id, File imageFile) async {
  var postUri = Uri.parse(ConstUrl.baseUrl + 'api/product/');
  var request = new http.MultipartRequest("POST", postUri);
  var token = await FlutterSecureStorage().read(key: "Token");
  var stream = new http.ByteStream(imageFile.openRead());
  stream.cast();
  var length = await imageFile.length();

  request.headers.addAll({
    "Authorization": "Bearer $token",
    "Content-type": "multipart/form-dataZ"
  });
  request.fields['name'] = name;
  request.fields['price'] = price;
  request.fields['stock'] = stock;
  request.fields['weight'] = weight;
  request.fields['category_id'] = category_id;
  request.fields['description'] = description;

  request.files.add(await http.MultipartFile('image', stream, length,
      filename: basename(imageFile.path)));

  var streamedResponse = await request.send();
  var response = await http.Response.fromStream(streamedResponse);

  if (response.statusCode == 200) {
    print("Uploaded!");
    print(token);
  } else {
    print("failed $response");
    print(imageFile);
  }
  ;
}
