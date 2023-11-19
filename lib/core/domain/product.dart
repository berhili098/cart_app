import 'package:freezed_annotation/freezed_annotation.dart';



part 'product.freezed.dart';
part 'product.g.dart';
@freezed
class Product with _$Product {
  const Product._();
  const factory Product({ 
    required String name,
    required String company,
    required double price,
    required String description,
    required String picture,
    
  }) = _Product;
  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}