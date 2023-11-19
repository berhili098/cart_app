// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkout.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Checkout {
  Product get product => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  String get promosCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CheckoutCopyWith<Checkout> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutCopyWith<$Res> {
  factory $CheckoutCopyWith(Checkout value, $Res Function(Checkout) then) =
      _$CheckoutCopyWithImpl<$Res, Checkout>;
  @useResult
  $Res call({Product product, int quantity, String promosCode});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class _$CheckoutCopyWithImpl<$Res, $Val extends Checkout>
    implements $CheckoutCopyWith<$Res> {
  _$CheckoutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? quantity = null,
    Object? promosCode = null,
  }) {
    return _then(_value.copyWith(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      promosCode: null == promosCode
          ? _value.promosCode
          : promosCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CheckoutImplCopyWith<$Res>
    implements $CheckoutCopyWith<$Res> {
  factory _$$CheckoutImplCopyWith(
          _$CheckoutImpl value, $Res Function(_$CheckoutImpl) then) =
      __$$CheckoutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Product product, int quantity, String promosCode});

  @override
  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$CheckoutImplCopyWithImpl<$Res>
    extends _$CheckoutCopyWithImpl<$Res, _$CheckoutImpl>
    implements _$$CheckoutImplCopyWith<$Res> {
  __$$CheckoutImplCopyWithImpl(
      _$CheckoutImpl _value, $Res Function(_$CheckoutImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? quantity = null,
    Object? promosCode = null,
  }) {
    return _then(_$CheckoutImpl(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      promosCode: null == promosCode
          ? _value.promosCode
          : promosCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CheckoutImpl extends _Checkout {
  const _$CheckoutImpl(
      {required this.product, required this.quantity, this.promosCode = ''})
      : super._();

  @override
  final Product product;
  @override
  final int quantity;
  @override
  @JsonKey()
  final String promosCode;

  @override
  String toString() {
    return 'Checkout(product: $product, quantity: $quantity, promosCode: $promosCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckoutImpl &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.promosCode, promosCode) ||
                other.promosCode == promosCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product, quantity, promosCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckoutImplCopyWith<_$CheckoutImpl> get copyWith =>
      __$$CheckoutImplCopyWithImpl<_$CheckoutImpl>(this, _$identity);
}

abstract class _Checkout extends Checkout {
  const factory _Checkout(
      {required final Product product,
      required final int quantity,
      final String promosCode}) = _$CheckoutImpl;
  const _Checkout._() : super._();

  @override
  Product get product;
  @override
  int get quantity;
  @override
  String get promosCode;
  @override
  @JsonKey(ignore: true)
  _$$CheckoutImplCopyWith<_$CheckoutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
