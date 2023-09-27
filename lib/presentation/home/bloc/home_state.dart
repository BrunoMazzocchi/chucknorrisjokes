part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class HomeLoading extends HomeState {}

final class HomeLoaded extends HomeState {
  final List<JokeEntity> jokes;

  HomeLoaded({required this.jokes});
}

final class HomeError extends HomeState { }