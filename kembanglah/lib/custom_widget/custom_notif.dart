import 'package:flutter/material.dart';

class CustomNotifTransaksi extends StatefulWidget {
  const CustomNotifTransaksi({Key? key}) : super(key: key);

  @override
  _CustomNotifTransaksiState createState() => _CustomNotifTransaksiState();
}

class _CustomNotifTransaksiState extends State<CustomNotifTransaksi> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 24,
        width: 60,
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            color: Color(0xff00A38C),
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: 4,
              )
            ]),
        child: Text(
          "Diproses",
          style: TextStyle(
            fontSize: 8,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ));
  }
}
