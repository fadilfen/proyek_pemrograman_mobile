import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF5F5),
      appBar: AppBar(
        title: const Text(
          'Menu',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: false,
        backgroundColor: const Color(0xFFD32F2F),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Baris 1
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildMenuItem(Icons.category, 'Kategori'),
                  _buildMenuItem(Icons.local_offer, 'Promo'),
                  _buildMenuItem(Icons.card_giftcard, 'Voucher'),
                  _buildMenuItem(Icons.shopping_cart, 'Keranjang'),
                ],
              ),
              const SizedBox(height: 16),
              // Baris 2
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildMenuItem(Icons.receipt_long, 'Pesanan'),
                  _buildMenuItem(Icons.favorite, 'Favorit'),
                  _buildMenuItem(Icons.new_releases, 'Produk Baru'),
                  _buildMenuItem(Icons.flash_on, 'Flash Sale'),
                ],
              ),
              const SizedBox(height: 16),
              // Baris 3
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildMenuItem(Icons.store, 'Toko Saya'),
                  _buildMenuItem(Icons.history, 'Riwayat'),
                  _buildMenuItem(Icons.payment, 'Pembayaran'),
                  _buildMenuItem(Icons.help_outline, 'Bantuan'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItem(IconData icon, String label) {
    return Container(
      width: 75,
      padding: const EdgeInsets.symmetric(vertical: 12),
      margin: const EdgeInsets.all(2),
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
        children: [
          Icon(icon, size: 28, color: const Color(0xFFD32F2F)),
          const SizedBox(height: 6),
          Text(
            label,
            style: TextStyle(fontSize: 11, color: Colors.grey[800]),
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
