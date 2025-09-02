import 'package:flutter/material.dart';
import '../orders/manage_orders_page.dart';
import '../products/manage_products_page.dart';

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Admin Dashboard")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const ManageProductsPage()),
                );
              },
              child: const Text("Product Management"),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const ManageOrdersPage()),
                );
              },
              child: const Text("Orders Management"),
            ),
          ],
        ),
      ),
    );
  }
}
