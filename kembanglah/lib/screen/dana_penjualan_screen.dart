import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kembanglah/custom_widget/custom_bottom_nav.dart';

class DanaPenjualanScreen extends StatefulWidget {
  const DanaPenjualanScreen({Key? key}) : super(key: key);

  @override
  _DanaPenjualanScreenState createState() => _DanaPenjualanScreenState();
}

class _DanaPenjualanScreenState extends State<DanaPenjualanScreen> {
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
                      text: "Dana Penjualan",
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
              height: 300,
              padding: EdgeInsets.all(45),
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
                  RichText(
                    text: TextSpan(
                      text: "Total Pemasukan",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Rp2.000.000,-",
                    style: TextStyle(
                      fontSize: 35,
                      color: Color(0xff00A38C),
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 250,
            right: 0,
            left: 0,
            child: Center(
              child: Container(
                height: 90,
                padding: EdgeInsets.all(5),
                width: MediaQuery.of(context).size.width - 120,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.toNamed('/PencairanDanaScreen');
                      },
                      child: Container(
                        height: 70,
                        width: 70,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(.3),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: Offset(0, 1),
                            )
                          ],
                        ),
                        child: Icon(Icons.account_balance_wallet_outlined,
                            color: Color(0xff00A38C)),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed('/HistoryPengeluaranScreen');
                      },
                      child: Container(
                        height: 70,
                        width: 70,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(.3),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: Offset(0, 1),
                            )
                          ],
                        ),
                        child: Icon(Icons.history_outlined,
                            color: Color(0xff00A38C)),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed('/HistoryPemasukanScreen');
                      },
                      child: Container(
                        height: 70,
                        width: 70,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(.3),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: Offset(0, 1),
                            )
                          ],
                        ),
                        child: Icon(Icons.money_outlined,
                            color: Color(0xff00A38C)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
