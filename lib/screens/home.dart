import 'package:flutter/material.dart';

class Laptop {
  final String model;
  final String company;
  final double price;

  Laptop({
    required this.model,
    required this.company,
    required this.price,
  });
}

List<Laptop> myLaps = [
  Laptop(model: "NoteBook 15'", company: "HP", price: 821.0),
  Laptop(model: "ThinkBook IIL", company: "Lenovo", price: 1360.0),
  Laptop(model: "IdeaPad", company: "Lenovo", price: 1400.0),
  Laptop(model: "ZenBook 14'", company: "Asus", price: 1650.0),
  Laptop(model: "ChromeBook", company: "Google", price: 2150.0),
  Laptop(model: "Surface 3 Pro", company: "Windows", price: 3299.0),
  Laptop(model: "MacBook Pro 14'", company: "Apple", price: 4599.0),
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "GridView Count",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 20,
        crossAxisSpacing: 25,
        semanticChildCount: myLaps.length, //indicate the length of the grid
        children: List.generate(myLaps.length, (index) {
          return Container(
              height: 300,
              color: Colors.grey[300],
              child: ListTile(
                title: Text(
                  myLaps[index].model,
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.green[400]),
                  textAlign: TextAlign.center,
                ),
                subtitle: Text(
                  "Company: ${myLaps[index].company} \nPrice: ${myLaps[index].price}",
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87),
                  textAlign: TextAlign.center,
                ),
              ));
        }),
      ),
    );
  }
}
