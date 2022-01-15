import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePickupPoint extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
       appBar: AppBar(
         title: Text("Profile"),
         centerTitle: true,backgroundColor: Color(0xff00A38C),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    side: BorderSide(
                        color: Color(0xff00A38C),
                        width: 2.0,
                        style: BorderStyle.solid),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    minimumSize: Size(
                        350, 40), // double.infinity is the width and 30 is the height
                  ),
                  onPressed: () {

                  },
                  child: Text(
                    'Home Delivery',
                    style: TextStyle(
                      color: Color(0xff00A38C),
                    ),
                  )),
            ],
          )
        ],
      )
    );
  }

}