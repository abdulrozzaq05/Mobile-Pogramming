import 'package:flutter/material.dart';
import 'package:uts_projek/itemmodel.dart';

class MalangBali extends StatelessWidget {
  const MalangBali({super.key});

  @override
  Widget build(BuildContext context) {
    final brg = ModalRoute.of(context)!.settings.arguments as Itemmodel;
    return Scaffold(
      appBar: AppBar(
        title: const Text('MALANG - BALI'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              brg.image,
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Tujuan ${brg.name} dengan harga ${brg.price}',
                style: const TextStyle(fontSize: 20),
              ),
              )
          ],
        ),
      ),
    );
  }
}