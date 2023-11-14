import 'package:belajar_flutter_day1/produk/detail_produk.dart';
import 'package:flutter/material.dart';

class ProdukForm extends StatefulWidget{
  const ProdukForm({Key? key}) : super(key: key);

  @override
  _ProdukFormState createState() => _ProdukFormState();

  }

  class _ProdukFormState extends State<ProdukForm> {
  final _kodeProdukTextboxController = TextEditingController();
  final _namaProdukTextboxController = TextEditingController();
  final _hargaProdukTextboxController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Form Produk'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20.0),
                child: const Text(
                  'Form Produk Flutter',
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20.0),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Image.network('https://www.petanikode.com/img/flutter/flutter-sqr.png',
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    _textboxKodeProduk(),
                    _textboxNamaProduk(),
                    _textboxHargaProduk()
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
                    String kodeProduk = _kodeProdukTextboxController.text;
                    String namaProduk = _namaProdukTextboxController.text;
                    int harga = int.parse(_hargaProdukTextboxController.text);

                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProdukDetail( kodeProduk: kodeProduk,
                      namaProduk: namaProduk,
                      harga: harga,)));
                  },
                  icon: Icon(Icons.save),
                  label: const Text(
                    "Simpan",
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
      ),
    );
  }

  _textboxKodeProduk(){
    return  TextField(decoration: const InputDecoration(labelText: "Kode Produk"), controller: _kodeProdukTextboxController,);
  }

  _textboxNamaProduk(){
    return  TextField(decoration: const InputDecoration(labelText: "Nama Produk"), controller: _namaProdukTextboxController,);
  }

  _textboxHargaProduk(){
    return  TextField(decoration: const InputDecoration(labelText: "Harga Produk"), style: TextStyle(color: Colors.blue) , controller: _hargaProdukTextboxController,);
  }
}