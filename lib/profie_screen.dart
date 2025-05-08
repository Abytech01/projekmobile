import 'package:flutter/material.dart';
import 'login_screen.dart'; 

class ProfileScreen extends StatelessWidget {
  final String email;

  const ProfileScreen({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Foto Profil
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/seiha.jpg'),
            ),
            const SizedBox(height: 16),

            // Nama
            const Text(
              'Ananda Fajar Saputra',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),

            // Email dari login
            Text(
              email,
              style: const TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 24),

            // Biodata Lain
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: const [
                    ListTile(
                      leading: Icon(Icons.home),
                      title: Text('Alamat'),
                      subtitle: Text('Kartasura'),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.phone),
                      title: Text('Nomor Telepon'),
                      subtitle: Text('0895422237632'),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.calendar_today),
                      title: Text('Tanggal Lahir'),
                      subtitle: Text('26 Juni 2005'),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 24),

            // 🔙 Tombol Kembali ke Login
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              },
              child: const Text('Kembali ke Halaman Login'),
            ),
          ],
        ),
      ),
    );
  }
}