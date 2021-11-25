import 'package:flutter/material.dart';
import 'package:kembanglah/custom_widget/custom_button.dart';
import 'package:kembanglah/custom_widget/custom_dana.dart';

class PencairanDanaScreen extends StatefulWidget {
  const PencairanDanaScreen({Key? key}) : super(key: key);

  @override
  _PencairanDanaScreenState createState() => _PencairanDanaScreenState();
}

class _PencairanDanaScreenState extends State<PencairanDanaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff00A38C),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              padding: EdgeInsets.all(25),
              height: 104,
              width: 360,
              color: Color(0xff00A38C),
              child: Column(
                children: [
                  RichText(
                    text: TextSpan(
                      text: "Pencairan Dana",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 120,
            left: 32,
            child: RichText(
              text: TextSpan(
                text: "Jumlah Dana",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Positioned(
            top: 172,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width - 40,
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some ';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black54),
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black54),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15.0),
                      ),
                    ),
                    hintStyle: TextStyle(fontSize: 18, color: Colors.black54),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 250,
            left: 24,
            child: CustomDana(),
          ),
          Positioned(
            top: 540,
            left: 0,
            right: 0,
            child: Center(
              child: CustomButton(),
            ),
          ),
          Positioned(
            top: 600,
            left: 0,
            right: 0,
            child: Center(
              child: CustomButton(),
            ),
          )
        ],
      ),
    );
  }
}
