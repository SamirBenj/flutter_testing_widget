class Produits {
  late String image;
  late String nom;
  late String description;
  late int prix;
  late bool ValeurCase;

  Produits({
    required this.image,
    required this.nom,
    required this.description,
    required this.prix,
    required this.ValeurCase,
  });
  //{
  //   this.image = image;
  //   this.nom = nom;
  //   this.description = description;
  //   this.prix = prix;
  //   this.ValeurCase = ValeurCase;
  // }
  factory Produits.fromJSON(Map<String, dynamic> parsedJson) {
    return Produits(
      image: parsedJson['image'],
      nom: parsedJson['nom'],
      description: parsedJson['desciption'],
      prix: parsedJson['prix'],
      ValeurCase: parsedJson['valeurBool'],
    );
  }
}
