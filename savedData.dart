import 'package:flutter/material.dart';

class SavedData extends StatefulWidget {
  final String name;
  final String mobile;
  final String location;
  final String age;
  final String whatsApp;
  final String date;
  final String bloodGroup;
  final String gender;

  const SavedData({
    super.key,
    required this.name,
    required this.mobile,
    required this.location,
    required this.age,
    required this.whatsApp,
    required this.date,
    required this.bloodGroup,
    required this.gender,
  });

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(widget.mobile,
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text(widget.location,
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text(widget.date, style: TextStyle(fontWeight: FontWeight.bold)),
              Text(widget.gender,
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text(widget.age, style: TextStyle(fontWeight: FontWeight.bold)),
              Text(widget.bloodGroup,
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text(widget.whatsApp,
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }
}
