import 'package:flutter/material.dart';
import 'package:test_app/models/GameData.dart';

class ProductDetail extends StatefulWidget {
  final GameData game;
  const ProductDetail({Key? key, required this.game}) : super(key: key);

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  late int currentQuantity;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentQuantity = widget.game.quantity;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.game.title),),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Container(
          margin: EdgeInsets.all(15),
          child: Image.network("http://10.0.2.2:9090/img/"+widget.game.image),
        ),
        Container(
          margin: EdgeInsets.all(15),
          child: Text(widget.game.description),
        ),
        Container(
          margin: EdgeInsets.all(15),
          child: Text(widget.game.price.toString() + " TND",style: TextStyle(fontSize: 24,fontWeight: FontWeight.normal)),
        ),

          Container(
            margin: EdgeInsets.all(15),
            child: Text(currentQuantity.toString(),style: TextStyle(fontSize: 24,fontWeight: FontWeight.normal)),
          ),
        ElevatedButton(
            onPressed: (){
              setState(() {
                currentQuantity--;
              });
            }, child: Text("Acheter"))
      ]),
    );
  }
}