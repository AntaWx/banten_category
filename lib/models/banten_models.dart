class BantenModels {
  const BantenModels(
      {required this.id,
      required this.category,
      required this.name,
      required this.imageUrl,
      required this.sugihan,
      required this.listBanten,
      required this.ingredients,
      required this.sebelumGalungan,
      required this.sesudahGalungan,
      required this.description});

  final int id;
  final List<String> category;
  final String name;
  final String imageUrl;
  final Enum sugihan;
  final List<String> listBanten;
  final List<String> ingredients;
  final bool sebelumGalungan;
  final bool sesudahGalungan;
  final String description;
}
