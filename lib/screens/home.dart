import 'package:flutter/material.dart';
import 'package:test_app/models/GameData.dart';
import 'package:test_app/product/productDetail.dart';
import 'package:test_app/product/productinfo.dart';
import 'package:test_app/services/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<GameData> gameList = [];
  Services services =  new Services();
  Future<void> fetchGames() async {
    gameList = await services.fetchGame();

  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchGames();
  }
  @override
  Widget build(BuildContext context) {
    return   Scaffold(

        body: FutureBuilder (
          future: fetchGames(),
          builder: (context, snapshot) {

              return ListView.builder(
                  itemCount: gameList.length,
                  itemBuilder: (context,index) {
                    return InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetail(game: gameList[index]),));
                      },
                      child: ProductInfo(gameData: gameList[index]),
                    );
                  });

          },
        )
    );
  }
}
