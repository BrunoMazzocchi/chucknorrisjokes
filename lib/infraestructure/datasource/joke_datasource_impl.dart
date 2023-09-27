import 'package:chucknorrisjokes/domain/datasource/joke_datasource.dart';
import 'package:chucknorrisjokes/domain/entities/joke_entity.dart';
import 'package:chucknorrisjokes/infraestructure/mappers/joke_mapper.dart';
import 'package:chucknorrisjokes/infraestructure/models/joke_model.dart';
import 'package:chucknorrisjokes/utils/api/api_client.dart';

class JokeDatasourceImpl implements JokeDatasource {
  final ApiClient apiClient;

  JokeDatasourceImpl({required this.apiClient});

  @override
  Future<JokeEntity> getRandomJoke() async {
    try {
      final response = await apiClient.get(path: '/random');
      if (response.statusCode != 200) {
        
      print(response.data); 
        throw Exception('Error getting random joke');
      }

      JokeModel model = JokeModel.fromJson(response.data);

      return JokeMapper.fromJokeModel(model);
    } catch (e) {
      throw Exception('Error getting random joke by datasource');
    }
  }
}
