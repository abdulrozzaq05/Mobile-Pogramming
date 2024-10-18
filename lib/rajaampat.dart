import 'package:flutter/material.dart';
import 'sewa.dart';

class RajaAmpat extends StatelessWidget {
  const RajaAmpat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PAKET LIBURAN RAJA AMPAT'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'image/rajaampat.jpg',
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 12),
            Text(
              'PAKET LIBURAN RAJA AMPAT',
              style: TextStyle(fontSize: 22),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Sewa()),
                );
              },
              child: const Text('Sewa Sekarang'),
            ),
          ],
        ),
      ),
    );
  }
}
