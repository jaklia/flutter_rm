import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rm/bloc/watches_bloc.dart';
import 'package:flutter_rm/bloc/watches_event.dart';
import 'package:flutter_rm/repository/watches_repository.dart';
import 'package:flutter_rm/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => WatchListBloc(
            watchesRepository:
                WatchesRepository(), // TODO:   this is not good, need other provider for the repo
          )..add(
              const WatchListRequested(),
            ),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            iconTheme: const IconThemeData(
              color: Color.fromRGBO(0, 55, 103, 1),
            ),
            textTheme: ThemeData.light().textTheme),
        home: const HomePage(),
      ),
    );
  }
}
