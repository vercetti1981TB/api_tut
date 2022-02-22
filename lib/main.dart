import 'package:api_test/cubit/add_book_cubit.dart';
import 'package:api_test/get_books_cubit/get_books_cubit.dart';
import 'package:api_test/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(create: ((context) => GetBooksCubit())),
      BlocProvider(create: ((context) => AddBookCubit()))
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
