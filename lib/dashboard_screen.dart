import 'package:flutter/material.dart';
import 'cart_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final TextEditingController jmlController = TextEditingController();

  @override
  void dispose() {
    jmlController.dispose();
    super.dispose();
  }

  void _goToCart() {
    final jumlah = jmlController.text;
    if (jumlah.isNotEmpty) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CartScreen(jumlahBarang: jumlah),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Masukkan jumlah barang')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dashboard")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: jmlController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Jumlah Barang',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: _goToCart,
              child: const Text('Checkout'),
            ),
          ],
        ),
      ),
    );
  }
}