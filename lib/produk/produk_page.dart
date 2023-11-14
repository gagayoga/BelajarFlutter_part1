import 'package:belajar_flutter_day1/produk/detail_produk.dart';
import 'package:belajar_flutter_day1/produk/produk_form.dart';
import 'package:flutter/material.dart';

class ProdukPage extends StatefulWidget{
  const ProdukPage({Key? key}) : super(key: key);

  @override
  _ProdukPageState createState() => _ProdukPageState();
}

class _ProdukPageState extends State<ProdukPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Data Produk'),
        actions: [
          GestureDetector(
            child: const Icon(Icons.add),
            onTap: () async{
              Navigator.push(
                  context,
                MaterialPageRoute(builder: (context) => const ProdukForm()));
            })
        ],
      ),

      body: ListView(
        children: const [
          ItemProduk(
            kodeProduk: "A101",
            namaProduk: "Kalkulus",
            harga: 2500000,
          ),

          ItemProduk(
            kodeProduk: "A102",
            namaProduk: "Algoritma",
            harga: 4500000,
          ),

          ItemProduk(
            kodeProduk: "A103",
            namaProduk: "Trigonometri",
            harga: 3000000,
          ),
        ],
      ),
    );
  }
}

class ItemProduk extends StatelessWidget{
  final String? kodeProduk;
  final String? namaProduk;
  final int? harga;

  const ItemProduk({Key? key, this.kodeProduk, this.namaProduk, this.harga})
  : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      child: Card(
        child: ListTile(
          title: Text(namaProduk.toString()),
          subtitle: Text(harga.toString()),
        ),
      ),
      onTap: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (context) =>ProdukDetail(
              kodeProduk: kodeProduk,
              namaProduk: namaProduk,
              harga: harga,
            ))
        );
      },
    );
  }



}