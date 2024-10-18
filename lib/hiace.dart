import 'package:flutter/material.dart';
import 'sewa.dart';

class Hiace extends StatelessWidget {
  const Hiace({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Toyota Hiace'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'image/hiace.png',
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 12),
            Text(
              'Kendaraan yang cocok untuk keluarga besar berisi 10-14 orang',
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
