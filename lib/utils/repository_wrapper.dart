import 'package:chucknorrisjokes/domain/repository/joke_repository.dart';
import 'package:chucknorrisjokes/infraestructure/datasource/joke_datasource_impl.dart';
import 'package:chucknorrisjokes/infraestructure/repository/joke_repository_impl.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class RepositoryWrapper extends StatelessWidget {
  final Widget child;

  const RepositoryWrapper(
      {super.key, required this.child,});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<JokeRepository>(
          create: (context) => JokeRepositoryImpl(
            jokeDatasource: JokeDatasourceImpl(
              apiClient: context.read(),
            ),
          ),
        ),
      ],
      child: child,
    );
  }
}
