import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:test_app/models/GameData.dart';

class Services {

  Services();

  void signin(String username , String password,BuildContext context) async{
    Map data =  {
      "username": username,
      "password": password
    };

    Map <String,String> headers =
    {
      "Content-Type": "application/json"
    };
    var jsonResponse;
    var url = Uri.http('10.0.2.2:9090',"/user/signin");
    var response = await http.post(url,headers: headers ,body: json.encode(data));
    if(response.statusCode == 200) {
      jsonResponse = json.decode(response.body);
      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');
      Navigator.pushReplacementNamed(context, "/home");
    }
    else {
      print(response.body);
    }
  }

  Future<List<GameData>>fetchGame() async {

    var url = Uri.http('10.0.2.2:9090',"/game");
    try {
      http.Response response = await http.get(url);
      if (response.statusCode == 200) {
        print('status code = ${response.statusCode}');
        String data = response.body;
        List<dynamic> jsonData = jsonDecode(data);
        print(jsonData);
        List<GameData> gameList =
        jsonData.map((e) => GameData.fromJson(e)).toList();
        print("list game ====== "+gameList[0].description);
        return gameList;
      } else {
        print('status code = ${response.statusCode}');
      }
    } catch (ex) {
      print(ex);
    }
    return [];
  }
}