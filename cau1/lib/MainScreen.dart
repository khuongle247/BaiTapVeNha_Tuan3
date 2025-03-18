import 'package:flutter/material.dart';

import 'ComponentsScreen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(

                children: [
                  SizedBox(height: 180,),
                  Image.asset('asset/images/my_images.jpg', width: 250),
                  SizedBox(height: 20,),
                  Text(
                      'Jetpack Compose',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold ),
                  ),
                  SizedBox(height: 15),
                  Text('Jetpack Compose is a modern UI toolkit for building native Android applications using a declarative programming approach.',
                  textAlign: TextAlign.center, style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 150),
                  ElevatedButton(onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>ComponentsScreen()),
                    );
                  },
                    child:Text("I'm ready", style: TextStyle(color: Colors.white, fontSize: 20)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                  )



                ]
            )));
  }}