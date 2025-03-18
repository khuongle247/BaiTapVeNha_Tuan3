import 'package:flutter/material.dart';

class TextDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Detail", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 26), ), centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.blue,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text.rich(
            TextSpan(
              style: TextStyle(fontSize: 30),
              children: [
                TextSpan(text: "The "),
                TextSpan(
                  text: "quick",
                  style: TextStyle(decoration: TextDecoration.lineThrough),
                ),
                TextSpan(text: " "),

                TextSpan(
                  text: "B",
                  style: TextStyle(
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
                TextSpan(
                  text: "rown",
                  style: TextStyle(
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                TextSpan(text: "\nfox j u m p s "),
                TextSpan(
                  text: "over",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(text: "\n"),

                TextSpan(
                  text: "the",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 30,
                  ),
                ),
                TextSpan(text: " "),
                TextSpan(
                  text: "lazy",
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
                TextSpan(text: " dog."),
              ],
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
