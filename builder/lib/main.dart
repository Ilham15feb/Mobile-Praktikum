import "package:flutter/material.dart";
import 'package:flutter/services.dart';

// Fungsi untuk mentrigger proses build aplikasi Flutter
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("ListView.builder"),
          actions: [
            IconButton(
              icon: const Icon(Icons.comment),
              tooltip: 'Comment Icon',
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.settings),
              tooltip: 'Setting Icon',
              onPressed: () {},
            ),
          ],
          backgroundColor: Colors.lightGreen,
          elevation: 50.0,
          leading: IconButton(
            icon: const Icon(Icons.menu),
            tooltip: 'Menu Icon',
            onPressed: () {},
          ),
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
        body: ListView.builder(
          itemCount: 31, // Jumlah item yang akan ditampilkan
          itemBuilder: (context, position) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  position.toString(),
                  style: const TextStyle(fontSize: 22.0),
                ),
              ),
            );
          },
        ),
      ),
      debugShowCheckedModeBanner: false, // Menghapus debug banner
    );
  }
}
