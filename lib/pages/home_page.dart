import 'package:dars34/models/product.dart';
import 'package:dars34/pages/product_details.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  final productsManager = ProductsManager();

  @override
  Widget build(BuildContext context) {
    final products = productsManager.list;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          for (var i = 0; i < products.length; i++)
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) {
                      return ProductDetails(
                        productTitle: products[i].title,
                        productImage: products[i].image,
                        productDescription: products[i].description,
                      );
                    },
                  ),
                );
              },
              child: Card(
                color: Colors.amber,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(products[i].title),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
