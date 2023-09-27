import 'package:chucknorrisjokes/domain/entities/joke_entity.dart';

abstract class JokeRepository { 
  Future<JokeEntity> getRandomJoke();
}