import 'package:chucknorrisjokes/presentation/home/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chuck Jokes"),
      ),
      body: SingleChildScrollView(
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state is HomeInitial || state is HomeLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            if (state is HomeError) {
              return const Center(
                child: Text('Something went wrong'),
              );
            }

            if (state is HomeLoaded) {
              return ListView.builder(
                itemCount: state.jokes.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(state.jokes[index].value),
                  );
                },
              );
            }

            return const Center(
              child: Text('Something went wrong'),
            );
          },
        ),
      ),
    );
  }
}
