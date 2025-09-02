import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../cart/cart_provider.dart';

class OrderHistoryPage extends StatelessWidget {
  const OrderHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text("My Orders")),
      body:
          cartProvider.orders.isEmpty
              ? const Center(child: Text("No past orders"))
              : ListView.builder(
                itemCount: cartProvider.orders.length,
                itemBuilder: (context, index) {
                  final order = cartProvider.orders[index];
                  return Card(
                    margin: const EdgeInsets.all(8),
                    child: ListTile(
                      title: Text("Order #${order["id"]}"),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Total: ₹ ${order["total"]}"),
                          Text("Status: ${order["status"]}"),
                          Text(
                            "Date: ${order["date"].toString().split('.')[0]}",
                            style: const TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
    );
  }
}
