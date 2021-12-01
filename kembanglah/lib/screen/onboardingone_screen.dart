import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kembanglah/screen/login_screen.dart';

import 'onboardingtwo_screen.dart';

class OnBoardingOneScreen extends StatelessWidget {
  const OnBoardingOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
              children: [
                SizedBox(height: 100),
                Center(
                  child: Image.asset('assets/images/onboarding_satu.png'),
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Pilih Bunga Sesuai Keinginanmu",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Padding(padding: EdgeInsets.all(10),
                  child: Text(
                    "Menyediakan bunga berbagai macam langsung dari sumbernya dan dengan harga yang murah.",
                    style: TextStyle(fontSize: 14),
                    textAlign: TextAlign.center,
                  ),
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
                        MaterialPageRoute(builder: (context) => OnBoardingTwoScreen()),
                      );
                    },
                    child: Text('NEXT')),
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    child: Text(
                      'SKIP',
                      style: TextStyle(
                        color: Color(0xff00A38C),
                      ),
                    ))
              ],
    )));
  }
}
