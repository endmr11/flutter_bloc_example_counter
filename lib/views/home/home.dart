import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_kullanimi2/views/home/bloc/home_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state is HomeLoadingState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is HomeLoadedState) {
            var sayim = state.sayi;
            return Center(
              child: Text(
                sayim.toString(),
              ),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //BlocProvider.of<HomeBloc>(context).increment();
          context.read<HomeBloc>().increment();
        },
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
