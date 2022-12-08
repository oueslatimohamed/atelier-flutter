import 'package:flutter/material.dart';
import 'package:test_app/models/GameData.dart';

class ProductInfo extends StatelessWidget {
  GameData gameData;
  String baseUrl = "http://10.0.2.2:9090";


  ProductInfo({required this.gameData});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 200,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          Container(
            height: 100,
            width: 100,
            margin: EdgeInsets.all(8),
            child: Image.network("http://10.0.2.2:9090/img/" + gameData.image,  height: 100,
            width: 100),
          ),
          SizedBox(width: 20,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Container(
              child: Text(gameData.title,style: TextStyle(fontSize: 14,fontWeight: FontWeight.normal)),
            ),
            Container(
              child: Text(gameData.price.toString() + " TND",style: TextStyle(fontSize: 24,fontWeight: FontWeight.normal)),
            )
          ],)
        ]),
      ),
    );
  }
}