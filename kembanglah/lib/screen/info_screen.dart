import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("About App"),
          centerTitle: true,backgroundColor: Color(0xff00A38C),),
          body: Container(
            color: Colors.white,
            child: Center(
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 100,),
                  Center(
                    child:  Image.asset("assets/LOGO.png"),
                  ),
                  Center(
                    child: Image.asset("assets/kembanglah.png"),
                  ),
                  Center(
                    child:  Text("#BerkembangBersama",style: TextStyle(fontSize: 20,color: Color(0xff00A38C)),),
                  ),
                  SizedBox(height: 40,),
                  Center(
                    child:  Text("VersiApp",style: TextStyle(fontSize: 20,)),
                  ),
                  SizedBox(height: 20,),
                  Center(
                    child:  Text("Develop by : Squad Papua",style: TextStyle(fontSize: 20)),
                  ),
                ],
              ),
            )
          ),
    );
  }

}