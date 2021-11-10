import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kembanglah/login_screen.dart';

class OnBoardingTwoScreen extends StatelessWidget {
  const OnBoardingTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Center(
            child: Column(
      children: [
        SizedBox(height: 300),
        Center(
          child: Image.asset(''),
        ),
        SizedBox(
          height: 200,
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
            child: Text('NEXT')),
        SizedBox(
          height: 10,
        ),
      ],
    )));
  }
}
