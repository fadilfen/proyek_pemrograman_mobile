import 'package:flutter/material.dart';
import 'package:flutter_application_1/menu_page.dart';
import 'package:flutter_application_1/product_detail_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF5F5),
      appBar: AppBar(
        title: const Text(
          'TokoKu',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: false,
        backgroundColor: const Color(0xFFD32F2F),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MenuPage()),
              );
            },
            icon: const Icon(Icons.grid_view, color: Colors.white),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Baris 1
              Row(
                children: [
                  Expanded(child: _buildProductItem(context, Icons.checkroom, 'Kaos Polos Merah', 'Rp 89.000', false)),
                  const SizedBox(width: 12),
                  Expanded(child: _buildProductItem(context, Icons.directions_run, 'Sepatu Sneakers', 'Rp 350.000', true)),
                ],
              ),
              const SizedBox(height: 12),
              // Baris 2
              Row(
                children: [
                  Expanded(child: _buildProductItem(context, Icons.backpack, 'Tas Ransel', 'Rp 175.000', false)),
                  const SizedBox(width: 12),
                  Expanded(child: _buildProductItem(context, Icons.sports_baseball, 'Topi Baseball', 'Rp 65.000', false)),
                ],
              ),
              const SizedBox(height: 12),
              // Baris 3
              Row(
                children: [
                  Expanded(child: _buildProductItem(context, Icons.dry_cleaning, 'Jaket Hoodie', 'Rp 220.000', true)),
                  const SizedBox(width: 12),
                  Expanded(child: _buildProductItem(context, Icons.checkroom, 'Celana Jeans', 'Rp 285.000', false)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProductItem(BuildContext context, IconData icon, String name, String price, bool isFavorite) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailPage(
              product: {'name': name, 'price': price, 'icon': icon, 'isFavorite': isFavorite},
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 3,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 120,
              decoration: const BoxDecoration(
                color: Color(0xFFFFEBEE),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Center(
                child: Icon(icon, size: 48, color: const Color(0xFFE57373)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 4),
              child: Text(
                name,
                style: TextStyle(fontSize: 13, color: Colors.grey[800]),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    price,
                    style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Color(0xFFD32F2F)),
                  ),
                  Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border,
                    size: 20,
                    color: const Color(0xFFE53935),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}