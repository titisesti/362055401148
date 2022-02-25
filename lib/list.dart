import 'package:flutter/material.dart';

class list1 extends StatelessWidget {
  final List Produk = [
    "Meja Belajar",
    "Queen Bed",
    "Kursi",
    "Almari",
    "Rak Buku",
    "Sofa",
    "Kitchen Set",
    "Box Baby",
    "Lampu Tidur",
    "Vas"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[600],
      body: ListView.builder(
        padding: new EdgeInsets.only(
          top: 0.0,
          right: 50,
          left: 50,
          bottom: 50,
        ),
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(Produk[index], style: TextStyle(fontSize: 20)),
              //subtitle: Text('My Favorite Song ' + Koleksi[index]),
              leading: CircleAvatar(
                child: Text(Produk[index][0], style: TextStyle(fontSize: 15)),
              ),
            ),
          );
        },
        itemCount: Produk.length,
      ),
    );
  }
}
