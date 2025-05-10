import 'package:flutter/material.dart';

class Tambah extends StatefulWidget {
  const Tambah({super.key});

  @override
  State<Tambah> createState() => _TambahState();
}

class _TambahState extends State<Tambah> {
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
      appBar: AppBar(title: const Text('King')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(
                  "TAMBAH FOLLOWERS",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
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
                    Text('$jumlahFollowing'),
                    ElevatedButton(
                      onPressed: tambahFollowing,
                      child: Text("follwors"),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}