import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'user/auth/login_page.dart';
import 'user/cart/cart_provider.dart';

void main() {
  runApp(const UserApp());
}

class UserApp extends StatelessWidget {
  const UserApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CartProvider(),
      child: MaterialApp(
        title: 'User App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const UserLoginPage(),
      ),
    );
  }
}
