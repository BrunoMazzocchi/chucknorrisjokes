import 'package:chucknorrisjokes/infraestructure/models/category_model.dart';

class JokeModel { 
  final CategoryModel categories; 
  final DateTime createdAt; 
  final String iconUrl;
  final String id;
  final DateTime updatedAt;
  final String url;
  final String value;

  const JokeModel({
    required this.categories,
    required this.createdAt,
    required this.iconUrl,
    required this.id,
    required this.updatedAt,
    required this.url,
    required this.value,
  });
}