import 'package:api_test/add_book_page.dart';
import 'package:api_test/get_books_cubit/get_books_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<GetBooksCubit>().getBooks();
    return Scaffold(
      appBar: AppBar(title: const Text('Get Books')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => AddBookPage()));
        },
        child: const Icon(Icons.add),
      ),
      body: BlocConsumer<GetBooksCubit, GetBooksState>(
        listener: (context, state) {
          state.maybeWhen(
              orElse: () {},
              failed: (e) {
                showDialog(
                    context: context,
                    builder: (context) {
                      return CupertinoAlertDialog(
                        title: Text('Error'),
                        content: Text(e),
                      );
                    });
              });
        },
        builder: (context, state) {
          return state.maybeWhen(loading: () {
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.red,
              ),
            );
          }, success: (books) {
            return Column(
              children: List.generate(
                  books.length,
                  (index) => ListTile(
                        title: Text(books[index].Name!),
                        subtitle: Text(books[index].Author!),
                      )),
            );
          }, orElse: () {
            return Container();
          });
        },
      ),
    );
  }
}
