import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kembanglah/screen/info_screen.dart';

class UserProfileMitraScreen extends StatelessWidget{
  const UserProfileMitraScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
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
                      Text("TEGUH PRASETYO",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white),)
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
                    padding: EdgeInsets.all(14),
                    height: 60,
                    width: 312,
                    color: Colors.white,
                    child: GestureDetector(
                      child: Row(
                          children: [
                            Image.asset("assets/images/user_edit_profile.png"),
                            SizedBox(width: 24,),
                            Text("Edit Profile",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Color(0xff808080)),)
                          ],
                      ),
                      onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => InfoScreen()));
                      },
                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    padding: EdgeInsets.all(14),
                    height: 60,
                    width: 312,
                    color: Colors.white,
                    child:  GestureDetector(
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/images/settings_profile.png"),
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
                    padding: EdgeInsets.all(14),
                    height: 60,
                    width: 312,
                    color: Colors.white,
                    child:  GestureDetector(
                      child: Row(
                        children: [
                          Image.asset("assets/images/logout_profile.png"),
                          SizedBox(width: 24,),
                          Text("Logout",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color:Color(0xff808080)),)
                        ],
                      ),
                      onTap: (){

                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )


    );
  }

}