import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookingUserScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("My Booking"),
        centerTitle: true,backgroundColor: Color(0xff00A38C),),
      body: CardList(),
    );
  }
  
}
class CardList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          right: 0,
          left: 0,
          child: Container(
            padding: EdgeInsets.all(25),
            height: 60,
            width: 360,
            color: Color(0xff00A38C),
          ),
        ),
        Column(
          children: [
            SizedBox(height: 35,),
            Container(
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
                              image: AssetImage('assets/images/profile_pic.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 160,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "ID - 1234567",
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
                              "Bunga Mawar",
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff808080),
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              "Rp. 50.000",
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff808080),
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),Text(
                              "Diproses",
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xffDC6915),
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                      ]),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Teguh P",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xff808080),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
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
                              image: AssetImage('assets/images/profile_pic.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 160,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "ID - 1234567",
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
                              "Bunga Tulip",
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff808080),
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              "Rp. 100.000",
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff808080),
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),Text(
                              "Dalam Pengiriman",
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xffA39C00),
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                      ]),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Teguh P",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xff808080),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
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
                              image: AssetImage('assets/images/profile_pic.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 160,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "ID - 1234567",
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
                              "Bunga Bangke",
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff808080),
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              "Rp. 100.000",
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff808080),
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),Text(
                              "Sampai Tujuan",
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff00A38C),
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                      ]),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Teguh P",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xff808080),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
          ],
        ),

      ],
    );


  }
}