import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kembanglah/screen/login_screen.dart';

class OnBoardingTwoScreen extends StatelessWidget {
  const OnBoardingTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Center(
            child: Column(
            children: [
              SizedBox(height: 100),
              Image.asset('assets/images/onboarding_dua.png'),
              SizedBox(
                height: 100,
              ),
              Text(
                "Mudahkan Hidupmu",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Padding(padding: EdgeInsets.all(10),
                child: Text(
                  "Tidak perlu keluar rumah, tidak perlu bermacet-macet, berbelanja bunga hanya dalam genggaman.",
                  style: TextStyle(fontSize: 14),
                  textAlign: TextAlign.center,
                ),
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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  child: Text('Mulai')),
              SizedBox(
                height: 10,
              ),
            ],
    )));
  }
}
