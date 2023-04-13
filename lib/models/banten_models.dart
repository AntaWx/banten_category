
class BantenModels {
  const BantenModels(
      {required this.id,
      required this.name,
      required this.sugihan,  
      required this.listBanten,
      required this.ingredients,
      required this.sebelumGalungan,
      required this.sesudahGalungan,
      required this.description});

  final int id;
  final String name;
  final Enum sugihan;
  final List<String> listBanten;
  final List<String> ingredients;
  final bool sebelumGalungan;
  final bool sesudahGalungan;
  final String description;
}
