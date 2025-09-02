import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../cart/cart_provider.dart';
import '../cart/cart_page.dart';

class ProductListPage extends StatelessWidget {
  const ProductListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> products = [
      {"id": 1, "name": "Laptop", "price": 65000.0, "image": Icons.laptop},
      {
        "id": 2,
        "name": "Smartphone",
        "price": 25000.0,
        "image": Icons.phone_android,
      },
      {
        "id": 3,
        "name": "Headphones",
        "price": 2000.0,
        "image": Icons.headphones,
      },
      {"id": 4, "name": "Shoes", "price": 1500.0, "image": Icons.shopping_bag},
    ];

    final cartProvider = Provider.of<CartProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Products"),
        actions: [
          Stack(
            children: [
              IconButton(
                icon: const Icon(Icons.shopping_cart),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CartPage()),
                  );
                },
              ),
              if (cartProvider.cartItems.isNotEmpty)
                Positioned(
                  right: 6,
                  top: 6,
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.red,
                    child: Text(
                      cartProvider.cartItems.length.toString(),
                      style: const TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: ListTile(
              leading: Icon(product["image"], size: 40),
              title: Text(product["name"]),
              subtitle: Text("₹ ${product["price"]}"),
              trailing: ElevatedButton(
                onPressed: () {
                  cartProvider.addToCart(product);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("${product["name"]} added to cart")),
                  );
                },
                child: const Text("Add"),
              ),
            ),
          );
        },
      ),
    );
  }
}
