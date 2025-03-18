import 'package:aplambai/ColumnF.dart';
import 'package:aplambai/PasswordT.dart';
import 'package:aplambai/RowF.dart';
import 'package:aplambai/Textf.dart';
import 'package:flutter/material.dart';
import 'TextDetailScreen.dart';
import 'image.dart';

class ComponentsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'UI Components List',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 300,
              child: ComponentButton(context, "Text", "Displays text", TextDetailScreen()),
            ),
            SizedBox(
              width: 300,
              child: ComponentButton(context, "Image", "Displays an image", image()),
            ),
            SizedBox(
              width: 300,
              child: ComponentButton(context, "TextField", "Input field for text", Textf()),
            ),
            SizedBox(
              width: 300,
              child: ComponentButton(context, "PasswordField", "Input field for passwords", PasswordT()),
            ),
            SizedBox(
              width: 300,
              child: ComponentButton(context, "Column", "Arranges elements vertically", ColumnF()),
            ),
            SizedBox(
              width: 300,
              child: ComponentButton(context, "Row", "Arranges elements horizontally", RowF()),
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }

  Widget ComponentButton(BuildContext context, String title, String subtitle, Widget? screen) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.lightBlueAccent,
          padding: EdgeInsets.all(15),
          alignment: Alignment.center,
        ),
        onPressed: screen != null
            ? () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => screen),
          );
        }
            : null,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text(subtitle, style: TextStyle(fontSize: 14)),
          ],
        ),
      ),
    );
  }
}
