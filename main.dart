

import 'package:flutter/material.dart';
import 'package:industry/widgets/productBox.dart';
import 'package:industry/screens/productpage.dart';
import 'package:industry/widgets/Navigation_Drawer.dart';

import 'models/product.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mkwasi Industry',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(
        title: 'Product Navigation home page',
        key: const ValueKey(1),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({required Key key, required this.title}) : super(key: key);
  final String title;
  final items = Product.getproduct();

  get item => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Product Listing")),
      drawer: const NavigationDrawer(),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return GestureDetector(
                child: ProductBox(item: items[index], key: const ValueKey(0)),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductPage(item: items[index],),
                        ),
                      );
                });
          }),
    );
  }
}
