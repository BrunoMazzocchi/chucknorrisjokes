import 'package:chucknorrisjokes/domain/datasource/joke_datasource.dart';
import 'package:chucknorrisjokes/domain/entities/joke_entity.dart';
import 'package:chucknorrisjokes/domain/repository/joke_repository.dart';

class JokeRepositoryImpl implements JokeRepository {
  final JokeDatasource jokeDatasource; 

  const JokeRepositoryImpl({required this.jokeDatasource});

  @override
  Future<JokeEntity> getRandomJoke() {
    return jokeDatasource.getRandomJoke(); 
  }
  
}