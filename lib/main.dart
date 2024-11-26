import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/models/shop.dart';
import 'package:untitled/pages/home_page.dart';
import 'package:untitled/pages/shop_page.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (context) => Shop(),
    child: const MyApp() ,
  ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '211158',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple.shade50),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: '211158'),
      routes: {
       '/home_page': (context) => const MyHomePage(title: "211158"),
        '/shop_page': (context) => const ShopPage(),
      }
    );
  }
}

