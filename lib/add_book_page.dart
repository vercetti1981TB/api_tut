import 'package:api_test/cubit/add_book_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class AddBookPage extends StatelessWidget {
  const AddBookPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _formKey = GlobalKey<FormBuilderState>();
    return Scaffold(
      appBar: AppBar(title: const Text('Add book')),
      body: FormBuilder(
          key: _formKey,
          child: BlocConsumer<AddBookCubit, AddBookState>(
            listener: (context, state) async {
              state.maybeWhen(
                  orElse: () {},
                  failed: (e) async {
                    await showDialog(
                        context: context,
                        builder: (context) {
                          return CupertinoAlertDialog(
                            title: Text('Error'),
                            content: Text(e),
                          );
                        });
                    Navigator.pop(context);
                  },
                  success: (book) async {
                    await showDialog(
                        context: context,
                        builder: (context) {
                          return CupertinoAlertDialog(
                            title: Text('Success'),
                            content: Text(book.toString()),
                          );
                        });
                    Navigator.pop(context);
                  });
            },
            builder: (context, state) {
              return Column(
                children: [
                  FormBuilderTextField(name: 'Name'),
                  const SizedBox(
                    height: 30,
                  ),
                  FormBuilderTextField(
                    name: 'price',
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  FormBuilderTextField(name: 'category'),
                  const SizedBox(
                    height: 30,
                  ),
                  FormBuilderTextField(name: 'author'),
                  const SizedBox(
                    height: 30,
                  ),
                  CupertinoButton(
                      child: Text('Add book'),
                      onPressed: () {
                        if (_formKey.currentState!.saveAndValidate()) {
                          context
                              .read<AddBookCubit>()
                              .addBook(_formKey.currentState!.value);
                        }
                      })
                ],
              );
            },
          )),
    );
  }
}
