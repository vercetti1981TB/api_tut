// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'book.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Book _$BookFromJson(Map<String, dynamic> json) {
  return _Book.fromJson(json);
}

/// @nodoc
class _$BookTearOff {
  const _$BookTearOff();

  _Book call(
      {String? Id,
      String? Name,
      double? Price,
      String? Category,
      String? Author}) {
    return _Book(
      Id: Id,
      Name: Name,
      Price: Price,
      Category: Category,
      Author: Author,
    );
  }

  Book fromJson(Map<String, Object?> json) {
    return Book.fromJson(json);
  }
}

/// @nodoc
const $Book = _$BookTearOff();

/// @nodoc
mixin _$Book {
  String? get Id => throw _privateConstructorUsedError;
  String? get Name => throw _privateConstructorUsedError;
  double? get Price => throw _privateConstructorUsedError;
  String? get Category => throw _privateConstructorUsedError;
  String? get Author => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookCopyWith<Book> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookCopyWith<$Res> {
  factory $BookCopyWith(Book value, $Res Function(Book) then) =
      _$BookCopyWithImpl<$Res>;
  $Res call(
      {String? Id,
      String? Name,
      double? Price,
      String? Category,
      String? Author});
}

/// @nodoc
class _$BookCopyWithImpl<$Res> implements $BookCopyWith<$Res> {
  _$BookCopyWithImpl(this._value, this._then);

  final Book _value;
  // ignore: unused_field
  final $Res Function(Book) _then;

  @override
  $Res call({
    Object? Id = freezed,
    Object? Name = freezed,
    Object? Price = freezed,
    Object? Category = freezed,
    Object? Author = freezed,
  }) {
    return _then(_value.copyWith(
      Id: Id == freezed
          ? _value.Id
          : Id // ignore: cast_nullable_to_non_nullable
              as String?,
      Name: Name == freezed
          ? _value.Name
          : Name // ignore: cast_nullable_to_non_nullable
              as String?,
      Price: Price == freezed
          ? _value.Price
          : Price // ignore: cast_nullable_to_non_nullable
              as double?,
      Category: Category == freezed
          ? _value.Category
          : Category // ignore: cast_nullable_to_non_nullable
              as String?,
      Author: Author == freezed
          ? _value.Author
          : Author // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$BookCopyWith<$Res> implements $BookCopyWith<$Res> {
  factory _$BookCopyWith(_Book value, $Res Function(_Book) then) =
      __$BookCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? Id,
      String? Name,
      double? Price,
      String? Category,
      String? Author});
}

/// @nodoc
class __$BookCopyWithImpl<$Res> extends _$BookCopyWithImpl<$Res>
    implements _$BookCopyWith<$Res> {
  __$BookCopyWithImpl(_Book _value, $Res Function(_Book) _then)
      : super(_value, (v) => _then(v as _Book));

  @override
  _Book get _value => super._value as _Book;

  @override
  $Res call({
    Object? Id = freezed,
    Object? Name = freezed,
    Object? Price = freezed,
    Object? Category = freezed,
    Object? Author = freezed,
  }) {
    return _then(_Book(
      Id: Id == freezed
          ? _value.Id
          : Id // ignore: cast_nullable_to_non_nullable
              as String?,
      Name: Name == freezed
          ? _value.Name
          : Name // ignore: cast_nullable_to_non_nullable
              as String?,
      Price: Price == freezed
          ? _value.Price
          : Price // ignore: cast_nullable_to_non_nullable
              as double?,
      Category: Category == freezed
          ? _value.Category
          : Category // ignore: cast_nullable_to_non_nullable
              as String?,
      Author: Author == freezed
          ? _value.Author
          : Author // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Book implements _Book {
  _$_Book({this.Id, this.Name, this.Price, this.Category, this.Author});

  factory _$_Book.fromJson(Map<String, dynamic> json) => _$$_BookFromJson(json);

  @override
  final String? Id;
  @override
  final String? Name;
  @override
  final double? Price;
  @override
  final String? Category;
  @override
  final String? Author;

  @override
  String toString() {
    return 'Book(Id: $Id, Name: $Name, Price: $Price, Category: $Category, Author: $Author)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Book &&
            const DeepCollectionEquality().equals(other.Id, Id) &&
            const DeepCollectionEquality().equals(other.Name, Name) &&
            const DeepCollectionEquality().equals(other.Price, Price) &&
            const DeepCollectionEquality().equals(other.Category, Category) &&
            const DeepCollectionEquality().equals(other.Author, Author));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(Id),
      const DeepCollectionEquality().hash(Name),
      const DeepCollectionEquality().hash(Price),
      const DeepCollectionEquality().hash(Category),
      const DeepCollectionEquality().hash(Author));

  @JsonKey(ignore: true)
  @override
  _$BookCopyWith<_Book> get copyWith =>
      __$BookCopyWithImpl<_Book>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookToJson(this);
  }
}

abstract class _Book implements Book {
  factory _Book(
      {String? Id,
      String? Name,
      double? Price,
      String? Category,
      String? Author}) = _$_Book;

  factory _Book.fromJson(Map<String, dynamic> json) = _$_Book.fromJson;

  @override
  String? get Id;
  @override
  String? get Name;
  @override
  double? get Price;
  @override
  String? get Category;
  @override
  String? get Author;
  @override
  @JsonKey(ignore: true)
  _$BookCopyWith<_Book> get copyWith => throw _privateConstructorUsedError;
}
