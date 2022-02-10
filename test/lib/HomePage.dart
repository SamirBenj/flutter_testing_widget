import 'dart:convert';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Accueil'),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Categories'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Recettes'),
                  ),
                ],
              ),
            ),
            Expanded(
              child: FutureBuilder(
                builder: (context, snapshot) {
                  var produits = json.decode(snapshot.data.toString());
                  return GridView.builder(
                    itemCount: produits.length,
                    itemBuilder: (BuildContext context, int index) {
                      print(produits[index]['nom'].toString());
                      var nom = produits[index]['nom'];

                      bool test = false;
                      if (nom == "burger") {
                        test = true;
                      }
                      return Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Material(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          elevation: 2.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                produits[index]['nom'].toString(),
                              ),
                              Image.asset(
                                'assets/${produits[index]['image']}',
                                height: 100,
                              ),
                              Text(
                                'Prix :${produits[index]['prix']}',
                              )
                            ],
                          ),
                        ),
                      );
                    },
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 20,
                      crossAxisCount: 2,
                    ),
                  );
                },
                future: DefaultAssetBundle.of(context)
                    .loadString("assets/produitsJson.json"),
              ),
            ),
          ],
        ));
  }
}
