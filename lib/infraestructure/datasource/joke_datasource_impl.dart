import 'package:chucknorrisjokes/domain/datasource/joke_datasource.dart';
import 'package:chucknorrisjokes/domain/entities/joke_entity.dart';
import 'package:chucknorrisjokes/utils/api/api_client.dart';

class JokeDatasourceImpl implements JokeDatasource {
  final ApiClient apiClient; 

  JokeDatasourceImpl({required this.apiClient});

  @override
  Future<JokeEntity> getRandomJoke() {
    // TODO: implement getRandomJoke
    throw UnimplementedError();
  }

  
}