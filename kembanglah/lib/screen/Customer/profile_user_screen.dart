import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kembanglah/screen/Customer/edit_profile_user_screen.dart';

class ProfileUserScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,backgroundColor: Color(0xff00A38C),),
      body: Center(
            child: Column(
              children: [
                SizedBox(height: 100,),
                Container(
                  width: 150,
                  height: 150,
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Color(0xff74EDED),
                    backgroundImage: AssetImage('assets/images/profile_pic.png'),
                  ),
                ),SizedBox(height: 30,),
                Text("Teguh Prasetyo"),
                SizedBox(height: 10,),
                Text("teguhpra"),
                SizedBox(
                  height: 30,
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
                      minimumSize: Size(
                          350, 40), // double.infinity is the width and 30 is the height
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfileUser()));
                    },
                    child: Text(
                      'Edit Profile',
                      style: TextStyle(
                        color: Color(0xff00A38C),
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),
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
                    child: Text('Logout')),


              ],
            ),
      )
    );
  }

}