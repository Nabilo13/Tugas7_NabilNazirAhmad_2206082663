import 'package:flutter/material.dart';

class ItemListPage extends StatefulWidget {
  const ItemListPage({Key? key}) : super(key: key);

  @override
  _ItemListPageState createState() => _ItemListPageState();
}

class _ItemListPageState extends State<ItemListPage> {
  // Contoh data produk, Anda bisa mengganti ini dengan data produk Anda
  List<Map<String, dynamic>> items = [
    {'name': 'Produk 1', 'amount': 1, 'description': 'Deskripsi produk 1'},
    {'name': 'Produk 2', 'amount': 2, 'description': 'Deskripsi produk 2'},
    // Tambahkan produk lainnya sesuai kebutuhan
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Produk'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]['name']),
            subtitle: Text('Jumlah: ${items[index]['amount']}\nDeskripsi: ${items[index]['description']}'),
          );
        },
      ),
    );
  }
}
