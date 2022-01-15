import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:kembanglah/model/login_model.dart';
import 'package:kembanglah/screen/Mitra/edit_profile_screen.dart';

class UserProfileMitraScreen extends StatefulWidget {
  _UserProfileMitraScreen createState() => _UserProfileMitraScreen();
}
class _UserProfileMitraScreen extends State<UserProfileMitraScreen>{
  var storage = FlutterSecureStorage();
  Future<Profile> getData() async{
    var token = await storage.read(key: "Token");
    var username = await storage.read(key: "username");
    var response = await get(
      Uri.parse('http://159.223.82.24:3000/api/user/search/$username'),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',},
    );
    print(username);
    if(response.statusCode ==200){
      return Profile.fromJson(json.decode(response.body)['data']);
    }else{
      throw throw Exception('Failed to load Data Profile');
    }
  }
  late Future<Profile> dataProfile;
  @override
  void initState() {
    super.initState();
    dataProfile = getData();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: FutureBuilder<Profile>(
        future: dataProfile,
        builder: (context, snapshot) {
            if (snapshot.hasData) {
              return SingleChildScrollView(
                child: Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.all(25),
                      color: Color(0xff00A38C),height: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: 40,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundColor: Color(0xff74EDED),
                                backgroundImage: AssetImage('assets/images/profile_pic.png'),
                              ),
                              SizedBox(width: 24,),
                              Text("${snapshot.data!.full_name}",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white),)
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin:const EdgeInsets.only(top: 130,left: 50),
                      child: Column(
                        children: [
                          SizedBox(height: 30,),
                          Container(
                            padding: EdgeInsets.all(15),
                            height: 60,
                            width: 312,
                            color: Colors.white,
                            child: GestureDetector(
                              child: Row(
                                children: [
                                  Icon(Icons.person, color: Color(0xff808080),
                                    size: 28,),
                                  SizedBox(width: 24,),
                                  Text("Edit Profile",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Color(0xff808080)),)
                                ],
                              ),
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfile()));
                              },
                            ),
                          ),
                          SizedBox(height: 30,),
                          Container(
                            padding: EdgeInsets.all(15),
                            height: 60,
                            width: 312,
                            color: Colors.white,
                            child:  GestureDetector(
                              child:Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.settings, color: Color(0xff808080),
                                        size: 28,),
                                      SizedBox(width: 35,),
                                      Text("Settings",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Color(0xff808080)),)
                                    ],
                                  ),
                                ],
                              ),
                              onTap: (){

                              },
                            ),
                          ),
                          SizedBox(height: 30,),
                          Container(
                            padding: EdgeInsets.all(15),
                            height: 60,
                            width: 312,
                            color: Colors.white,
                            child:  GestureDetector(
                              child: Row(
                                children: [
                                  Icon(Icons.logout, color: Color(0xff808080),
                                    size: 28,),
                                  SizedBox(width: 24,),
                                  Text("Logout",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color:Color(0xff808080)),)
                                ],
                              ),
                              onTap: (){
                                Get.offAllNamed('/LoginScreen');
                              },
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              );
            }else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            } else {
              return Center(child: const CircularProgressIndicator(),);
            }
        }),
    );
  }

}
