import 'package:flutter/material.dart';
import 'list_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const _HomeContent(),
    const ListScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'V A R A',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, letterSpacing: 2),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.person_outline, color: Colors.black),
            onPressed: () {},
          )
        ],
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Eksplorasi'),
        ],
      ),
    );
  }
}

class _HomeContent extends StatelessWidget {
  const _HomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Temukan\nRuang Ikonik.',
            style: TextStyle(
                fontSize: 32, fontWeight: FontWeight.w900, height: 1.2),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Cari destinasi...',
                icon: Icon(Icons.search, color: Colors.black),
              ),
            ),
          ),
          const SizedBox(height: 30),
          const Text(
            'Kategori',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildCategoryIcon(Icons.museum, 'Museum'),
              _buildCategoryIcon(Icons.park, 'Taman'),
              _buildCategoryIcon(Icons.local_library, 'Edukasi'),
              _buildCategoryIcon(Icons.coffee, 'Kafe'),
            ],
          ),
          const SizedBox(height: 30),
          Container(
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(12),
              image: const DecorationImage(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1507842217343-583bb7270b66?auto=format&fit=crop&w=800&q=80'),
                fit: BoxFit.cover,
                opacity: 0.6,
              ),
            ),
            child: const Center(
              child: Text(
                'Spotlight Bulan Ini',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildCategoryIcon(IconData icon, String label) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: Colors.black),
        ),
        const SizedBox(height: 8),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}