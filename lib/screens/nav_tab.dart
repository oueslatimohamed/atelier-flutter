import 'package:flutter/material.dart';
import 'package:test_app/screens/cartScreen.dart';
import 'package:test_app/screens/home.dart';
import 'package:test_app/screens/homeGame.dart';

class NavigationTab extends StatelessWidget {
  const NavigationTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold( 
        drawer: Drawer(
        child: Column(children: [
          AppBar(
            automaticallyImplyLeading: false,
            title: const Text("G-Store Esprit"),
          ),
          ListTile(title: Row(children: const [
            Icon(Icons.edit),
            SizedBox(width: 10,),
            Text("Edit profile")
          ],),
          onTap: () {
            Navigator.pushNamed(context, "/homegame");
          },
          )
        ]),
      ),
        
        appBar: AppBar(title: const Text("G-store Esprit"),
        bottom: const TabBar(
          tabs: [
            Tab(icon: Icon(Icons.home),text: "Home",),
            Tab(icon: Icon(Icons.store),text: "Store",),
            Tab(icon: Icon(Icons.shop),text: "Cart"),
          ],
        ),),
        body: const TabBarView(
          children: [
            HomeScreen(),
            HomeGame(),
            CartScreen()
          ],
        ),
        
      ),
    );
  }
}