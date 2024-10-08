import 'package:flutter/material.dart';
import 'package:flutter_application_8/colorTaskRequird.dart';

class MyColor extends StatelessWidget {
  const MyColor({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 171, 150, 206),
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "COLOR",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ColorPage(
                        color: Colors.green,
                        name: "Green",
                      ),
                    ),
                  );
                },
                child: Text(
                  'Green',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ColorPage(
                        color: Colors.red,
                        name: "Red",
                      ),
                    ),
                  );
                },
                child: Text(
                  'Red',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ColorPage(
                        color: Colors.yellow,
                        name: "Yellow",
                      ),
                    ),
                  );
                },
                child: Text(
                  'Yellow',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ColorPage(
                        color: Colors.blue,
                        name: "Blue",
                      ),
                    ),
                  );
                },
                child: Text(
                  'Blue',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
