import 'package:chucknorrisjokes/domain/entities/joke_entity.dart';

abstract class JokeDatasource {
  Future<JokeEntity> getRandomJoke();
}