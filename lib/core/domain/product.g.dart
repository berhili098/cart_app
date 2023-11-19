// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      name: json['name'] as String,
      company: json['company'] as String,
      price: (json['price'] as num).toDouble(),
      description: json['description'] as String,
      picture: json['picture'] as String,
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'company': instance.company,
      'price': instance.price,
      'description': instance.description,
      'picture': instance.picture,
    };
