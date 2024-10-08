import 'package:flutter/material.dart';
import 'package:flutter_application_8/saveControll.dart';

class SavedData extends StatefulWidget {
  const SavedData({super.key});

  @override
  State<SavedData> createState() => _SavedDataState();
}

class _SavedDataState extends State<SavedData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Saved Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 250),
        child: Center(
          child: Column(
            children: [
              Text(
                name.text,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(Mobile.text, style: TextStyle(fontWeight: FontWeight.bold)),
              Text(Locat.text, style: TextStyle(fontWeight: FontWeight.bold)),
              Text(Age.text, style: TextStyle(fontWeight: FontWeight.bold)),
              Text(WhatsApp.text,
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text(Date.text, style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }
}
