import 'package:belajar_flutter_day1/row_widget.dart';
import 'package:belajar_flutter_day1/widget_column.dart';
import 'package:flutter/material.dart';

class HelloWorld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Belajar Flutter Gagayoga'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.network('https://i.ibb.co/Y36VB5W/OIP-1.jpg'),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              child: const Text(
                  '"Selamat Pagi Dunia, Dunia Tipu-Tipu."',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15.0),
              width: 250,
              height: 50,
              child: ElevatedButton.icon(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ColumnWidget()));
                },
                icon: Icon(Icons.navigate_next_rounded),
                label: const Text(
                  "Next Page",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
