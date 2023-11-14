import 'package:belajar_flutter_day1/produk/produk_form.dart';
import 'package:belajar_flutter_day1/produk/produk_page.dart';
import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Widget Row Flutter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(5.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Image.network(
                      'https://www.petanikode.com/img/flutter/flutter-sqr.png'),
                  SizedBox(width: 10.0,),
                  Image.network(
                      'https://www.petanikode.com/img/flutter/flutter-sqr.png')
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
                      MaterialPageRoute(builder: (context) => ProdukForm()));
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
