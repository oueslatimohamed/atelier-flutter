import 'package:flutter/material.dart';
import 'package:test_app/models/GameData.dart';

class GameInfo extends StatelessWidget {
  final GameData gameData;
  const GameInfo({Key? key, required this.gameData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width/2,
      child: Card(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 150,
                width: 150,
                //margin: EdgeInsets.all(8),
                child: Image.asset(gameData.image,  height: 150,
                    width: 150,fit: BoxFit.fill,),
              ),
              SizedBox(height: 10,),
              Container(
                child: Text(gameData.title,style: TextStyle(fontSize: 14,fontWeight: FontWeight.normal)),
              ),
            ]),
      ),
    );
  }
}
