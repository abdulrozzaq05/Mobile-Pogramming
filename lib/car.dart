import 'package:flutter/material.dart';
import 'hiace.dart';
import 'innova.dart';


class Car extends StatelessWidget {
  const Car({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CAR AVAILABLE'),        
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Hiace()),
                );
              },
              child: Card(
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Image.asset(
                    'image/hiace.png',
                    fit: BoxFit.cover,
                  ),
                  subtitle: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      'TOYOTA HIACE',
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
                  MaterialPageRoute(builder: (context) => Innova()),
                );
              },
              child: Card(
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Image.asset(
                    'image/innova.png',
                    fit: BoxFit.cover,
                  ),
                  subtitle: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      'TOYOTA INNOVA',
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