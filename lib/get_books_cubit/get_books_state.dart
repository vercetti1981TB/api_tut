part of 'get_books_cubit.dart';

@freezed
class GetBooksState with _$GetBooksState {
  const factory GetBooksState.initial() = _Initial;
  const factory GetBooksState.loading() = _Loading;
  const factory GetBooksState.success(List<Book> books) = _Success;
  const factory GetBooksState.failed(String error) = _Failed;
}
