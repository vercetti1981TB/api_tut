import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../book.dart';

part 'get_books_state.dart';
part 'get_books_cubit.freezed.dart';

class GetBooksCubit extends Cubit<GetBooksState> {
  GetBooksCubit() : super(const GetBooksState.initial());

  getBooks() async {
    emit(const GetBooksState.loading());
    try {
      var response = await Dio().get('https://localhost:44353/api/Books');
      List listinJson = response.data;
      emit(GetBooksState.success(List.generate(
          listinJson.length, (index) => Book.fromJson(listinJson[index]))));
    } catch (e) {
      emit(GetBooksState.failed(e.toString()));
    }
  }
}
