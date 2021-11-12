import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_kullanimi2/views/home/bloc/home_bloc.dart';
import 'package:flutter_bloc_kullanimi2/views/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeBloc>(
          create: (BuildContext context) => HomeBloc(
            initialState: HomeInitial(),
          ),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
