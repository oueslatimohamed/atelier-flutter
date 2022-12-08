import 'package:flutter/material.dart';
import 'package:test_app/models/GameData.dart';
import 'package:test_app/product/productDetail.dart';
import 'package:test_app/product/productinfo.dart';
import 'package:test_app/screens/home.dart';
import 'package:test_app/screens/homeGame.dart';
import 'package:test_app/screens/login.dart';
import 'package:test_app/screens/nav_bottom_bar.dart';
import 'package:test_app/screens/nav_tab.dart';
import 'package:test_app/screens/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'G-Store Esprit',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "/home":(context) => NavigationTab(),
        "/homegame":(context) => NavigationBottom()
      },
      home: 
      //Signup() 
      //HomeGame()
      LoginScreen()
      //ProductDetail(game: GameData(image: "assets/images/dmc5.jpg", title: "Devil by cry", price: 200.0,description: "une description deu jeu !",quantity:20))
      //HomeScreen()
      //ProductDetail(Title:"Devil by cry" ,image:"assets/images/dmc5.jpg",description: "description",price: 200.0,quantity: 10)
      /*Scaffold(
        appBar: AppBar(title: Text("G-Store Esprit"),),
        body: Column(children: [
            ProductInfo(image: "assets/images/dmc5.jpg", title: "Devil by cry", price: 200.0),
            ProductInfo(image: "assets/images/nfs.jpg", title: "Need for speed", price: 200.0),
            ProductInfo(image: "assets/images/minecraft.jpg", title: "minecraft", price: 200.0),
            ProductInfo(image: "assets/images/rdr2.jpg", title: "Red dead II", price: 200.0),
            ProductInfo(image: "assets/images/re8.jpg", title: "RE8", price: 200.0),
            ProductInfo(image: "assets/images/fifa.jpg", title: "Fifa 22", price: 200.0),
        ]),
        )*/
    );
  }
}

