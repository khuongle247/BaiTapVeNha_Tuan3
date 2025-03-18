import 'package:flutter/material.dart';

class image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("Image Detail", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 26), ), centerTitle: true,
    leading: IconButton(
    icon: Icon(Icons.arrow_back, color: Colors.blue,),
    onPressed: () {
    Navigator.pop(context);

    }, ),),
    body: Center(
    child: Column(

    children: [
    SizedBox(height: 180,),
    Image.asset('asset/images/anh.jpg', width: 250),
    SizedBox(height: 20,),
      Text(
        'ảnh mèo đồng ý',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold ),
      ),
    ]
    )));}}