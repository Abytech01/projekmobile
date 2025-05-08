import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("BIODATA"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Row(children: [Icon(Icons.person), SizedBox(width: 8), Text("BIODATA")]),
          SizedBox(height: 10),
          Text("NAMA : Abyan Farras Yudhistira"),
          Text("NIM : 230101002"),
          Text("Kelas : SI 23A1"),
          Text("Prodi : Sistem Informasi"),
          Text("Hobi : Mengedit jika ada mood"),
        ],
      ),
    );
  }
}