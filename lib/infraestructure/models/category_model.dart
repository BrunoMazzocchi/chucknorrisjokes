class CategoryModel { 
  final List<String>? listCategories;

  CategoryModel({
    required this.listCategories
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      listCategories: json['categories'].cast<String>()
    );
  }
}