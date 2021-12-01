import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kembanglah/screen/login_mitra_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Center(
            child: Column(
      children: [
              SizedBox(height: 200),
              Center(
                child: Image.asset('assets/images/LOGO.png'),
              ),
              Center(
                child: Image.asset('assets/images/kembanglah.png'),
              ),
              SizedBox(
                height: 100,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff00A38C),
                    minimumSize: Size(350, 40),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            5.0)), // double.infinity is the width and 30 is the height
                  ),
                  onPressed: () {},
                  child: Text('LOGIN USER')),
              SizedBox(
                height: 10,
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginMitraScreen()));
                  },
                  child: Text(
                    'LOGIN MITRA',
                    style: TextStyle(
                      color: Color(0xff00A38C),
                    ),
                  ))
      ],
    )));
  }
}
