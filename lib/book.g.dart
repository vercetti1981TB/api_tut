// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Book _$$_BookFromJson(Map<String, dynamic> json) => _$_Book(
      Id: json['Id'] as String?,
      Name: json['Name'] as String?,
      Price: (json['Price'] as num?)?.toDouble(),
      Category: json['Category'] as String?,
      Author: json['Author'] as String?,
    );

Map<String, dynamic> _$$_BookToJson(_$_Book instance) => <String, dynamic>{
      'Id': instance.Id,
      'Name': instance.Name,
      'Price': instance.Price,
      'Category': instance.Category,
      'Author': instance.Author,
    };
