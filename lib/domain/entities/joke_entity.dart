import 'package:flutter/foundation.dart';

class JokeEntity { 
  final Category categories; 
  final DateTime createdAt; 
  final String iconUrl;
  final String id;
  final DateTime updatedAt;
  final String url;
  final String value;

  const JokeEntity({
    required this.categories,
    required this.createdAt,
    required this.iconUrl,
    required this.id,
    required this.updatedAt,
    required this.url,
    required this.value,
  });
}