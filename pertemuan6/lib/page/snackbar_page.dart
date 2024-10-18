import 'package:flutter/material.dart';

class SnackBarPage extends StatelessWidget {
  const SnackBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Modul 6 Snack Bar"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final mySnackBar = SnackBar(
              content: const Text("Berhasil membuat SnackBar"),
              duration: const Duration(seconds: 3),
              padding: const EdgeInsets.all(10),
              backgroundColor: Colors.amberAccent,
            );
            ScaffoldMessenger.of(context).showSnackBar(mySnackBar);
          },
          child: const Text("Tampilkan SnackBar"), // Properti child untuk teks tombol
        ),
      ),
    );
  }
}
