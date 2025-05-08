import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  final String jumlahBarang;

  const CartScreen({super.key, required this.jumlahBarang});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Keranjang")),
      body: Center(
        child: Text(
          "Jumlah barang yang dibeli: $jumlahBarang",
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}