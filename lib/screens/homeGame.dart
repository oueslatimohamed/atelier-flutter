import 'package:flutter/material.dart';
import 'package:test_app/models/GameData.dart';
import 'package:test_app/product/gameInfo.dart';

class HomeGame extends StatefulWidget {
  const HomeGame({Key? key}) : super(key: key);

  @override
  State<HomeGame> createState() => _HomeGameState();
}

class _HomeGameState extends State<HomeGame> {

  List<GameData> gameList = [];

    @override
  void initState() {
    // TODO: implement initState
    super.initState();
    gameList.add( GameData(image: "assets/images/dmc5.jpg", title: "Devil by cry", price: 200.0,description: "une description deu jeu !",quantity:20));
    gameList.add( GameData(image: "assets/images/dmc5.jpg", title: "Devil by cry", price: 200.0,description: "une description deu jeu !",quantity:20));
    gameList.add( GameData(image: "assets/images/dmc5.jpg", title: "Devil by cry", price: 200.0,description: "une description deu jeu !",quantity:20));
    gameList.add( GameData(image: "assets/images/dmc5.jpg", title: "Devil by cry", price: 200.0,description: "une description deu jeu !",quantity:20));
    gameList.add( GameData(image: "assets/images/dmc5.jpg", title: "Devil by cry", price: 200.0,description: "une description deu jeu !",quantity:20));
    gameList = [
      GameData(image: "assets/images/dmc5.jpg", title: "Devil by cry", price: 200.0,description: "une description deu jeu !",quantity:20),
      GameData(image: "assets/images/nfs.jpg", title: "Need for speed", price: 200.0,description: "une description deu jeu !",quantity:23),
      GameData(image: "assets/images/minecraft.jpg", title: "minecraft", price: 200.0,description: "une description deu jeu !",quantity:30),
      GameData(image: "assets/images/rdr2.jpg", title: "Red dead II", price: 200.0,description: "une description deu jeu !",quantity: 14),
      GameData(image: "assets/images/re8.jpg", title: "RE8", price: 200.0,description: "une description deu jeu !",quantity: 10),
      GameData(image: "assets/images/fifa.jpg", title: "Fifa 22", price: 200.0,description: "une description deu jeu !",quantity: 10),
      GameData(image: "assets/images/fifa.jpg", title: "Fifa 22", price: 200.0,description: "une description deu jeu !",quantity: 10)
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 0,
                            mainAxisSpacing: 20,
                            //childAspectRatio: 0.65,
                        ),
        itemCount: gameList.length,
        itemBuilder: (context,index){
          return GameInfo(gameData: gameList[index]);
        },
         
      )
    );
  }
}
