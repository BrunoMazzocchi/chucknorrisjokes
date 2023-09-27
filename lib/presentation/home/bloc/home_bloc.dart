import 'package:bloc/bloc.dart';
import 'package:chucknorrisjokes/domain/repository/joke_repository.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {

  final JokeRepository jokeRepository;

  HomeBloc({required this.jokeRepository}) : super(HomeInitial()) {
    on<HomeEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
