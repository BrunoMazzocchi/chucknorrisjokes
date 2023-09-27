import 'package:chucknorrisjokes/infraestructure/models/category_model.dart';

class JokeModel { 
  final CategoryModel? categories; 
  final DateTime? createdAt; 
  final String? iconUrl;
  final String? id;
  final DateTime? updatedAt;
  final String? url;
  final String? value;

  const JokeModel({
    required this.categories,
    required this.createdAt,
    required this.iconUrl,
    required this.id,
    required this.updatedAt,
    required this.url,
    required this.value,
  });
  
    factory JokeModel.fromJson(Map<String, dynamic> json) {
    return JokeModel(
      categories: CategoryModel.fromJson(json['categories']),
      createdAt: DateTime.parse(json['created_at']),
      iconUrl: json['icon_url'],
      id: json['id'], 
      updatedAt: DateTime.parse(json['updated_at']),
      url: json['url'],
      value: json['value'],
    );
  }
}