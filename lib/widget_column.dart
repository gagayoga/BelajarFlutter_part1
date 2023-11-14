import 'package:belajar_flutter_day1/hello_world.dart';
import 'package:belajar_flutter_day1/row_widget.dart';
import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Widget Column Flutter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(5.0),
              width: 500.0,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  new ListTile(
                    leading: Icon(
                      Icons.phone_iphone,
                      size: 50,
                    ),
                    title: Text('Ini Kolom 1 Phone'),
                    subtitle: Text('Ini substitle kolom1'),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.tablet,
                      size: 50,
                    ),
                    title: Text('Ini Kolom 2 Tablet'),
                    subtitle: Text('Ini substitle kolom2'),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.laptop_chromebook,
                      size: 50,
                    ),
                    title: Text('Ini Kolom 3 Laptop'),
                    subtitle: Text('Ini substitle kolom3'),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.computer,
                      size: 50,
                    ),
                    title: Text('Ini Kolom 1 Komputer'),
                    subtitle: Text('Ini substitle kolom4'),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 35.0),
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
                      MaterialPageRoute(builder: (context) => RowWidget()));
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
