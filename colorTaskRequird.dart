import 'package:flutter/material.dart';

class ColorPage extends StatefulWidget {
  final Color color;
  String? name;
 

  ColorPage({required this.color, required this.name});

  @override
  State<ColorPage> createState() => _ColorPageState();
}

class _ColorPageState extends State<ColorPage> {
  @override
  void initState() {
    super.initState();
    print('Name*===============>>${widget.name}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.color,
      appBar: AppBar(
        title: Text(
          "COLOR",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("${widget.name}"),
        ),
      ),
    );
  }
}
