import 'package:flutter/material.dart';

class CustomDana extends StatefulWidget {
  const CustomDana({Key? key}) : super(key: key);

  @override
  _CustomDanaState createState() => _CustomDanaState();
}

class _CustomDanaState extends State<CustomDana> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 140,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 4,
            )
          ]),
      child: Center(
        child: Text(
          "Rp50.000",
          style: TextStyle(
            color: Color(0xff808080),
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
