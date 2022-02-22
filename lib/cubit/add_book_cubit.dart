import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../book.dart';

part 'add_book_state.dart';
part 'add_book_cubit.freezed.dart';

class AddBookCubit extends Cubit<AddBookState> {
  AddBookCubit() : super(const AddBookState.initial());
  addBook(Map<String, dynamic> data) async {
    emit(const AddBookState.loading());
    try {
      var response =
          await Dio().post('https://localhost:44353/api/Books', data: data);
      Book book = Book.fromJson(response.data);
      emit(AddBookState.success(book));
    } catch (e) {
      emit(AddBookState.failed(e.toString()));
    }
  }
}
