class BantenModels {
  const BantenModels(
      {required this.id,
      required this.category,
      required this.name,
      required this.imageUrl,
      required this.sugihan,
      required this.listBanten,
      required this.ingredients,
      required this.executionTime,
      required this.dificulty,
      required this.affordability,
      required this.description});

  final String id;
  final List<String> category;
  final String name;
  final String imageUrl;
  final bool sugihan;
  final List<String> listBanten;
  final List<String> ingredients;
  final String executionTime;
  final String dificulty;
  final String affordability;
  final List<String> description;
}
