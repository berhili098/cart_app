

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wiggli_test/core/domain/product.dart';

part 'checkout.freezed.dart';
@freezed
class Checkout with _$Checkout {
  const Checkout._();
  const factory Checkout({
    required Product product,
    required int quantity,
  }) = _Checkout;
}