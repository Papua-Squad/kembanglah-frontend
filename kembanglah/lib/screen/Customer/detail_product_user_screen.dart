import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailProductScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
          children: [
            Column(
              children: [
                SizedBox(height: 24,),
                Container(
                  width: 500,
                  child: Image.asset("assets/images/detail_produk.png",scale: 0.2,),
                )
              ],
            ),
            Positioned(child: IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.arrow_back,color: Colors.white,)),top: 35,left: 10,),
            Positioned(child: IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart_outlined,color: Colors.white,)),top: 35,left: 350,),
            Positioned(top: 260,child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
              ),
              padding: EdgeInsets.all(20),
              width: 416,
              height: 500,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Text("Bunga Mawar",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                    SizedBox(height: 20,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 80,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset("assets/images/ic_weight.png"),
                            Text("Weight"),
                            Text("500 Gram"),
                          ],
                        ),
                        SizedBox(width: 20,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset("assets/images/ic_stok.png"),
                            Text("Weight"),
                            Text("100 Pcs"),
                          ],
                        ),
                        SizedBox(width: 20,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset("assets/images/ic_jenis.png"),
                            Text("Jenis"),
                            Text("Bunga Hiasan"),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 270,),
                        Text("Rp. 50.000",style: TextStyle(color: Color(0xff00A38C),fontSize: 18),)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Text("Deskripsi",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    Text("Mawar adalah suatu jenis tanaman semak dari genus Rosa sekaligus nama bunga yang dihasilkan tanaman ini. Mawar liar terdiri dari 100 spesies lebih, kebanyakan tumbuh di belahan bumi utara yang berudara sejuk. Spesies mawar umumnya merupakan tanaman semak yang berduri atau tanaman memanjat yang tingginya bisa mencapai 2 sampai 5 meter. Walaupun jarang ditemui, tinggi tanaman mawar yang merambat di tanaman lain bisa mencapai 20 meter."),
                    SizedBox(height: 15,),
                    Center(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xff00A38C),
                            minimumSize: Size(350, 40),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    5.0)), // double.infinity is the width and 30 is the height
                          ),
                          onPressed: () {

                          },
                          child: Text('Add To Cart')),
                    )
                ],
              ),
            ))
          ],
      )
    );
  }
  
}