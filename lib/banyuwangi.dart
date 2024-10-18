import 'package:flutter/material.dart';

class Banyuwangi extends StatelessWidget {
  const Banyuwangi({super.key});

  @override
  Widget build(BuildContext context) {    
    return Scaffold(
      appBar: AppBar(
        title: const Text('PAKET LIBURAN WISATA BANYUWANGI'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'image/banyuwangi.jpeg',
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 12),
            Text(
              'PAKET LIBURAN WISATA BANYUWANGI',
              style: TextStyle(fontSize: 22),
            ),
          ],
        ),
      ),
    );
  }
}