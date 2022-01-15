import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kembanglah/screen/Customer/booking_user_screen.dart';
import 'package:kembanglah/screen/Customer/detail_product_user_screen.dart';
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
      "assets/images/Benih.png",
      "assets/images/Pestisida.png",
      "assets/images/Pupuk.png",
      "assets/images/Benih.png",
      "assets/images/Pestisida.png",
    ];
    final List<int> numbers = [1, 2, 3, 5, 8, 13, 21, 34, 55];
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
                  label: Text("Pencarian"),
                  labelStyle: TextStyle(color: Color(0xff00A38C),),
                  contentPadding: EdgeInsets.all(20.0),
                ),
              ),
              ),

              Row(
                children: [
                  SizedBox(width: 30,),
                  Text("Category"),
                  SizedBox(width: 200,),
                  Text("Lihat Semua")
                ],
              ),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 24.0),
                height: MediaQuery.of(context).size.height * 0.25,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: icon.length, itemBuilder: (context, index) {
                  return GestureDetector(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: Container(
                        child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(child: Image.asset(icon[index]),),
                            ],
                          ),
                        ),
                      ),
                    ),
                    onTap: (){

                    },
                  );
                }),
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
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
                height: MediaQuery.of(context).size.height * 0.4,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: numbers.length, itemBuilder: (context, index) {
                  return GestureDetector(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Card(
                        color: Colors.white,
                        child: Container(
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(child: Image.asset("assets/images/product_image_satu.png"),),
                                SizedBox(
                                  height: 20,
                                ),
                                Text("Bunga Mawar"),
                                Text("500 Gram"),
                                Text("Rp. 70.000")
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => DetailProductScreen()));
                    },
                  );
                }),
              ),
            ],
          ),
        ),
      )
    );
  }

}