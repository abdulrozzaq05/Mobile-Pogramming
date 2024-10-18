import 'package:flutter/material.dart';
import 'tujuan1.dart';
import 'tujuan2.dart';
import 'tujuan3.dart';
import 'itemmodel.dart';
import 'car.dart';
import 'vacation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Itemmodel> items = [
    Itemmodel(name: 'Malang-Bali', price: 5000, image: 'image/bali.jpeg'),
    Itemmodel(name: 'Malang-Jakarta', price: 2000, image: 'image/jkt.jpg'),
    Itemmodel(name: 'Malang-Medan', price: 3000, image: 'image/medan.jpeg'),
  ];
  final List<Widget> rutes = [MalangBali(), MalangJakarta(), MalangMedan()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation and Route',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('TRAVEL APP'),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];

              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => rutes[index],
                      settings: RouteSettings(arguments: items[index]),
                    ),
                  );
                },
                child: Card(
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Expanded(child: Text(item.name)),
                        if (item.price != null)
                          Expanded(
                            child: Text(
                              item.price.toString(),
                              textAlign: TextAlign.end,
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        drawer: Builder(
          builder: (BuildContext context) {
            return Drawer(
              child: ListView(
                children: [
                  const DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome to Travel App',
                          style: TextStyle(fontSize: 22),
                        ),
                        Text(
                          'travelAgent@gmail.com',
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.car_repair),
                    title: Text('CAR AVAILABLE'),
                    onTap: () {
                      Navigator.of(context).pop(); // Tutup drawer
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Car(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.sync_lock_outlined),
                    title: Text('PAKET LIBURAN'),
                    onTap: () {
                      Navigator.of(context).pop(); // Tutup drawer
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Vacation(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
