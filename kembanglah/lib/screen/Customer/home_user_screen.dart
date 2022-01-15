import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kembanglah/screen/Customer/booking_user_screen.dart';
import 'package:kembanglah/screen/Customer/profile_user_screen.dart';

class HomeUserScreen extends StatefulWidget{
  @override
  _HomeScreenUser createState() => _HomeScreenUser();

}
class _HomeScreenUser extends State<HomeUserScreen>{
  int pageIndex = 0;
  List<Widget> pageList = <Widget>[
    BerandaUserScreen(),
    BookingUserScreen(),
    ProfileUserScreen(),
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
            icon: Image.asset('assets/images/icon_mybooking.png'),
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

class BerandaUserScreen extends StatefulWidget {
  const BerandaUserScreen({Key? key}) : super(key: key);

  @override
  _BerandaUserScreen createState() => _BerandaUserScreen();

}
class _BerandaUserScreen extends State<BerandaUserScreen>{

  @override
  Widget build(BuildContext context) {
    List nama = [
      "Add Product",
      "Add Category",
      "Add Best Seller Product",
      "Add Recomennded Product",
      "List",
      "Info",
      "List Category Screen",
    ];
    List icon = [
      "assets/images/icon_product.png",
      "assets/images/icon_category.png",
      "assets/images/icon_best_seller.png",
      "assets/images/icon_recomended_product.png",
      "assets/images/icon_list.png",
      "assets/images/icon_info.png",
      "assets/images/icon_list.png",
    ];
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 60,),
              Image.asset('assets/images/kembanglah.png',height: 36,width: 200,),
              Padding(padding: EdgeInsets.all(25),child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff00A38C),)
                  ),
                  labelStyle: TextStyle(color: Color(0xff00A38C),),
                  contentPadding: EdgeInsets.all(20.0),
                ),
              ),
              ),
              Row(
                children: [
                  SizedBox(width: 30,),
                  Text("Best Seller"),
                  SizedBox(width: 200,),
                  Text("Lihat Semua")
                ],
              ),
              SizedBox(height: 10,),
          SizedBox(
            width: double.infinity,
            height: 250,
            child: Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child:  GridView(
                scrollDirection: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 250,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20
                ),
                children: [
                  Container(

                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/product_image_satu.png",),
                        SizedBox(
                          height: 30,
                        ),
                        Text("Bunga Mawar"),
                        Text("500 Gram"),
                        Text("Rp. 70.000")
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.amber,
                    alignment: Alignment.center,
                    child: Text('2', style: TextStyle(fontSize: 30),),
                  ),
                  Container(
                    color: Colors.amber,
                    alignment: Alignment.center,
                    child: Text('3', style: TextStyle(fontSize: 30),),
                  ),
                  Container(
                    color: Colors.amber,
                    alignment: Alignment.center,
                    child: Text('4', style: TextStyle(fontSize: 30),),
                  ),
                  Container(
                    color: Colors.amber,
                    alignment: Alignment.center,
                    child: Text('5', style: TextStyle(fontSize: 30),),
                  ),
                  Container(
                    color: Colors.amber,
                    alignment: Alignment.center,
                    child: Text('6', style: TextStyle(fontSize: 30),),
                  ),
                  Container(
                    color: Colors.amber,
                    alignment: Alignment.center,
                    child: Text('7', style: TextStyle(fontSize: 30),),
                  ),
                  Container(
                    color: Colors.amber,
                    alignment: Alignment.center,
                    child: Text('8', style: TextStyle(fontSize: 30),),
                  ),
                ],
              ),
            ),
          ),
            ],
          ),
        ),
      )
    );
  }

}