import 'package:bloc/bloc.dart';
import 'package:chucknorrisjokes/domain/entities/joke_entity.dart';
import 'package:chucknorrisjokes/domain/repository/joke_repository.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {

  final JokeRepository jokeRepository;

  HomeBloc({required this.jokeRepository}) : super(HomeInitial()) {
    
    on<GetTotalJokes> (_getTotalJokes);
    init();

  }

  void init () {
    add(GetTotalJokes(20));
  }

  void _getTotalJokes(GetTotalJokes event, Emitter<HomeState> emit) async {
    emit(HomeLoading());
    try {
      
      List<JokeEntity>  jokes = [];

      for (int i = 0; i < event.total; i++) {
        jokes.add(await jokeRepository.getRandomJoke());
      }

      emit(HomeLoaded(jokes: jokes));
    } catch (e) {
      emit(HomeError());
    }
  }
}
