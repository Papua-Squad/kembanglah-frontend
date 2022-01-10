import 'package:flutter/material.dart';
import 'package:kembanglah/custom_widget/custom_bottom_nav.dart';
import 'package:kembanglah/custom_widget/custom_notif.dart';

class PrepareTransaksiScreen extends StatefulWidget {
  const PrepareTransaksiScreen({Key? key}) : super(key: key);

  @override
  _PrepareTransaksiScreenState createState() => _PrepareTransaksiScreenState();
}

class _PrepareTransaksiScreenState extends State<PrepareTransaksiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
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
                      text: "Prepare Order Transaksi",
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
              height: 130,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: AssetImage("assets/images/bunga.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Bunga Mawar",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff808080),
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              "Teguh P",
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff808080),
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              "1 Barang",
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff808080),
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                          ],
                        ),
                        Spacer(),
                        CustomNotifTransaksi(),
                      ]),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Total Belanja",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xff808080),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Rp50.000",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff808080),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
