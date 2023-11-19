import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';

@freezed
class Category with _$Category {
  const factory Category({
    required String name,
    String? image,
    @Default(false) bool isSelected,
  }) = _Category;
  const Category._();
}
