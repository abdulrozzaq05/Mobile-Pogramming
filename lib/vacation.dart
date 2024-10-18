import 'package:flutter/material.dart';
import 'rajaampat.dart';
import 'banyuwangi.dart';


class Vacation extends StatelessWidget {
  const Vacation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VACATION PACKET'),        
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RajaAmpat()),
                );
              },
              child: Card(
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Image.asset(
                    'image/rajaampat.jpg',
                    fit: BoxFit.cover,
                  ),
                  subtitle: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      'RAJA AMPAT',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Banyuwangi()),
                );
              },
              child: Card(
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Image.asset(
                    'image/banyuwangi.jpeg',
                    fit: BoxFit.cover,
                  ),
                  subtitle: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      'WISATA BANYUWANGI',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}