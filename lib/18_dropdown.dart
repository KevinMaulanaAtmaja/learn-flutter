import 'package:flutter/material.dart';

class Dropdowns extends StatefulWidget {
  const Dropdowns({super.key});

  @override
  State<Dropdowns> createState() => _DropdownsState();
}

class _DropdownsState extends State<Dropdowns> {
  List<Product> products = [
    Product(name: "Fried Chicken"),
    Product(name: "Pizza"),
    Product(name: "Burger"),
    Product(name: "Sushi"),
  ];

  Product? selectedProduct;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dropdowns"),
        backgroundColor: Colors.teal.shade100,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: DropdownButton<Product>(
            items: products
                .map(
                  (product) => DropdownMenuItem(
                    value: product,
                    child: Text(product.name),
                  ),
                )
                .toList(),
            value: selectedProduct,
            onChanged: (Product? value) {
              setState(() {
                selectedProduct = value;
              });
            },
            isExpanded: true,
            icon: Icon(Icons.person),
            hint: Text("Select Product"),
          ),
        ),
      ),
    );
  }
}

class Product {
  final String name;

  Product({required this.name});
}
