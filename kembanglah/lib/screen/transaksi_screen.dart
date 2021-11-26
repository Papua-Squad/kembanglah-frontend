import 'package:flutter/material.dart';
import 'package:kembanglah/custom_widget/custom_bottom_nav.dart';

class TransaksiScreen extends StatefulWidget {
  const TransaksiScreen({Key? key}) : super(key: key);

  @override
  _TransaksiScreenState createState() => _TransaksiScreenState();
}

class _TransaksiScreenState extends State<TransaksiScreen> {
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
              height: 130,
              width: 360,
              color: Color(0xff00A38C),
              child: Column(
                children: [
                  RichText(
                    text: TextSpan(
                      text: "Transaksi",
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
            top: 95,
            left: 0,
            right: 0,
            child: Container(
              height: 60,
              padding: EdgeInsets.all(16),
              width: MediaQuery.of(context).size.width - 40,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 15,
                      spreadRadius: 4,
                    )
                  ]),
              child: Column(
                children: [
                  Row(children: [
                    Icon(
                      Icons.note_alt_outlined,
                      color: Color(0xff808080),
                      size: 28,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Data Transaksi Masuk",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff808080),
                      ),
                    )
                  ]),
                ],
              ),
            ),
          ),
          Positioned(
            top: 175,
            left: 0,
            right: 0,
            child: Container(
              height: 60,
              padding: EdgeInsets.all(15),
              width: MediaQuery.of(context).size.width - 40,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 15,
                      spreadRadius: 4,
                    )
                  ]),
              child: Column(
                children: [
                  Row(children: [
                    Icon(
                      Icons.takeout_dining_outlined,
                      color: Color(0xff808080),
                      size: 28,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Prepare Order",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff808080),
                      ),
                    )
                  ]),
                ],
              ),
            ),
          ),
          Positioned(
            top: 255,
            left: 0,
            right: 0,
            child: Container(
              height: 60,
              padding: EdgeInsets.all(15),
              width: MediaQuery.of(context).size.width - 40,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 15,
                      spreadRadius: 4,
                    )
                  ]),
              child: Column(
                children: [
                  Row(children: [
                    Icon(
                      Icons.volunteer_activism_outlined,
                      color: Color(0xff808080),
                      size: 28,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Konfirmasi Pengiriman",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff808080),
                      ),
                    )
                  ]),
                ],
              ),
            ),
          ),
          Positioned(
            top: 335,
            left: 0,
            right: 0,
            child: Container(
              height: 60,
              padding: EdgeInsets.all(15),
              width: MediaQuery.of(context).size.width - 40,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 15,
                      spreadRadius: 4,
                    )
                  ]),
              child: Column(
                children: [
                  Row(children: [
                    Icon(
                      Icons.monetization_on_outlined,
                      color: Color(0xff808080),
                      size: 28,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Dana Penjualan",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff808080),
                      ),
                    )
                  ]),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
