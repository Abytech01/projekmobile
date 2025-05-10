import 'package:flutter/material.dart';
import 'cart_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int jumlahFollower = 0;
  int jumlahFollowing = 0;

  void tambahFollower() {
    setState(() {
      jumlahFollower++;
    });
  }

  void tambahFollowing() {
    setState(() {
      jumlahFollowing++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profil')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/seiha.jpeg'),
            ),
            const SizedBox(height: 16),
            const Text(
              'Abyan Farras Yudhistira',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'bakwan@gmail.com',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 24),

            // Follower & Following
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      'Follower',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('$jumlahFollower'),
                    IconButton(
                      icon: const Icon(Icons.person_add),
                      onPressed: tambahFollower,
                      tooltip: 'Tambah Follower',
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Following',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('$jumlahFollowing'),
                    IconButton(
                      icon: const Icon(Icons.group_add),
                      onPressed: tambahFollowing,
                      tooltip: 'Tambah Following',
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 24),
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
                      subtitle: Text('Klaten'),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.phone),
                      title: Text('Nomor Telepon'),
                      subtitle: Text('081574608002'),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.calendar_today),
                      title: Text('Tanggal Lahir'),
                      subtitle: Text('25 Juni 2004'),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.star,),
                      title: Text('Hobi'),
                      subtitle: Text('Mengedit sesuatu jika mood sedang baik'),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}