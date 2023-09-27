part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

class GetRandomJoke extends HomeEvent {}

class GetTotalJokes extends HomeEvent { 
  final int total;

  GetTotalJokes(this.total);
}