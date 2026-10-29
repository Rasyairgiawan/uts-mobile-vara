import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../models/item_model.dart';
import '../widgets/custom_card.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  Future<List<Place>> _loadData() async {
    final String response = await rootBundle.loadString('assets/data.json');
    final data = await json.decode(response);
    var list = data['data'] as List;
    return list.map((item) => Place.fromJson(item)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Eksplorasi Destinasi',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w900,
            fontSize: 24,
          ),
        ),
        centerTitle: false,
      ),
      body: FutureBuilder<List<Place>>(
        future: _loadData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
                child: CircularProgressIndicator(color: Colors.black));
          } else if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          } else if (snapshot.hasData) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
                  child: Text(
                    'Menampilkan ${snapshot.data!.length} tempat menarik',
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return CustomCard(place: snapshot.data![index]);
                    },
                  ),
                ),
              ],
            );
          }
          return const Center(child: Text("Tidak ada data"));
        },
      ),
    );
  }
}