import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kembanglah/screen/add_category_screen.dart';
import 'package:kembanglah/screen/add_product_screen.dart';
import 'package:kembanglah/screen/best_seller_product_screen.dart';
import 'package:kembanglah/screen/info_screen.dart';
import 'package:kembanglah/screen/list_product_screen.dart';
import 'package:kembanglah/screen/product_mitra_screen.dart';
import 'package:kembanglah/screen/recommended_product_screen.dart';
import 'package:kembanglah/screen/transaksi_screen.dart';
import 'package:kembanglah/screen/user_profile_mitra_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  int pageIndex = 0;
  List<Widget> pageList = <Widget>[
    BerandaScreen(),
    TransaksiScreen(),
    UserProfileMitraScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageList[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: pageIndex,
        onTap: (value) {
          setState(() {
            pageIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/navbar_home.png'),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/navbar_transaksi.png'),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/navbar_profile.png'),
            title: Text(""),
          ),
        ],
        selectedItemColor: Color(0xff00A38C),
        unselectedItemColor: Colors.black,
        showUnselectedLabels: false,
      ),
    );
  }
}

class BerandaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    List nama = [
      "Add Product",
      "Add Category",
      "Add Best Seller Product",
      "Add Recomennded Product",
      "List",
      "Info"
    ];
    List icon = [
      "assets/images/icon_product.png",
      "assets/images/icon_category.png",
      "assets/images/icon_best_seller.png",
      "assets/images/icon_recomended_product.png",
      "assets/images/icon_list.png",
      "assets/images/icon_info.png"
    ];
    List Page = <Widget>[
      AddProductScreen(),
      AddCategoryScreen(),
      BestSellerProductScreen(),
      RecomendedProductScreen(),
      ListProductScreen(),
      InfoScreen(),
    ];
    return Scaffold(
        body: Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
            padding: EdgeInsets.all(25),
            color: Color(0xff00A38C),
            height: 300,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hello,",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Welcome",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "MITRA",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    ),
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Color(0xff74EDED),
                      backgroundImage: AssetImage('assets/images/profile_pic.png'),
                    ),
                  ],
                ),
              ],
            )),
        Container(
          margin: const EdgeInsets.only(top: 200),
          child: GridView.count(
            crossAxisCount: 2,
            padding: EdgeInsets.all(20.0),
            children: List.generate(nama.length, (index) {
              return GestureDetector(
                child: Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 60,
                      ),
                      Center(
                        child: Image.asset(icon[index]),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Center(child: Text(nama[index])),
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Page[index]));
                },
              );
            }),
          ),
        )
      ],
    ));
  }
}
