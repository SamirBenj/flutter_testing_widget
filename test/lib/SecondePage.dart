import 'package:flutter/material.dart';

import 'Classes/ListeProduits.dart';

class SecondePage extends StatefulWidget {
  const SecondePage({Key? key}) : super(key: key);

  @override
  State<SecondePage> createState() => _SecondePageState();
}

class _SecondePageState extends State<SecondePage> {
  @override
  Widget build(BuildContext context) {
    // List<Produits> produits = [
    //   // Produits("assets/Burger.jpg", "Burger", "description 1", 10, false),
    // ];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Accueil',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(111, 186, 255, 100),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_basket,
              size: 30,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(30),
            child: Row(
              children: [
                Text(
                  'Nos Suggestions',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          ),
          Card(
            elevation: 5.0,
            color: Colors.blue,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            margin: EdgeInsets.all(20),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Burger',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Divider(
                    thickness: 2,
                    height: 30,
                    indent: 100,
                    color: Colors.blueGrey,
                    endIndent: 100,
                  ),
                  Image.asset(
                    'assets/Burger.png',
                    height: MediaQuery.of(context).size.height * 0.10,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              elevation: 2.0,
              child: ListTile(
                title: Text(
                  'Burger',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Icon(
                  Icons.bug_report,
                  size: 30,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
