import 'package:chucknorrisjokes/domain/entities/category_entity.dart';
import 'package:chucknorrisjokes/domain/entities/joke_entity.dart';
import 'package:chucknorrisjokes/infraestructure/models/category_model.dart';
import 'package:chucknorrisjokes/infraestructure/models/joke_model.dart';

class JokeMapper {
  JokeEntity fromJokeModel(JokeModel model) => JokeEntity(
      createdAt: model.createdAt,
      iconUrl: model.iconUrl,
      id: model.id,
      updatedAt: model.updatedAt,
      url: model.url,
      value: model.value,
      categories: fromCategoryModel(model.categories));

  CategoryEntity fromCategoryModel(CategoryModel model) =>
      CategoryEntity(categories: model.listCategories);
}
