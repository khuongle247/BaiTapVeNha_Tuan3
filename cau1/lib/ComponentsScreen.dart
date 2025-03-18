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
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionTitle("Display"),
            ComponentButton(context, "Text", "Displays text", TextDetailScreen()),
            ComponentButton(context, "Image", "Displays an image", image()),

            SectionTitle("Input"),
            ComponentButton(context, "TextField", "Input field for text", Textf()),
            ComponentButton(context, "PasswordField", "Input field for passwords", PasswordT()),

            SectionTitle("Layout"),
            ComponentButton(context, "Column", "Arranges elements vertically", ColumnF()),
            ComponentButton(context, "Row", "Arranges elements horizontally", RowF()),
          ],
        ),
      ),
    );
  }

  Widget SectionTitle(String title) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        title,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget ComponentButton(BuildContext context, String title, String subtitle, Widget? screen) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.lightBlueAccent,
            padding: EdgeInsets.all(15),
            alignment: Alignment.centerLeft,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
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
              Text(
                title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              Text(
                subtitle,
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }}
