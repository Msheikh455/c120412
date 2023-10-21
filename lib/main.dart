import 'package:flutter/material.dart';

void main() {
  runApp(Pizza());
}

class Pizza extends StatelessWidget {
  Pizza({Key? key}) : super(key: key);

  final List<String> imageList = [
    "assets/pizza1.jpg",
    "assets/pizza2.jpg",
    "assets/pizza3.jpg"
  ];

  final List<String> textList = [
    "Vegetables_Pizza",
    "Cheese pizza",
    "Chicken pizza"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pizza List'),
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body: SafeArea(
          child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                margin: EdgeInsets.all(10.0),
                color: Colors.deepOrangeAccent,
                child: Row(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Image.asset(
                        imageList[index],
                        width: 100.0,
                        height: 100.0,
                      ),
                    ),
                    SizedBox(width: 20.0),
                    Text(
                      textList[index],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 30.0,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
