import 'package:flutter/material.dart';
import '../models/item_model.dart';

class DetailScreen extends StatelessWidget {
  final Place place;

  const DetailScreen({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              place.gambar,
              width: double.infinity,
              height: 350,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          place.kategori,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 12),
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(Icons.star, size: 18),
                          const SizedBox(width: 4),
                          Text(
                            place.rating.toString(),
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    place.judul,
                    style: const TextStyle(
                        fontSize: 28, fontWeight: FontWeight.w900),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(Icons.location_on_outlined, size: 16),
                      const SizedBox(width: 4),
                      Text(place.lokasi,
                          style: TextStyle(color: Colors.grey.shade700)),
                    ],
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'Deskripsi',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    place.deskripsi,
                    style: const TextStyle(fontSize: 14, height: 1.6),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(top: BorderSide(color: Colors.grey.shade200)),
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            padding: const EdgeInsets.symmetric(vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onPressed: () {},
          child: const Text(
            'Kunjungi Situs Resmi',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ),
    );
  }
}