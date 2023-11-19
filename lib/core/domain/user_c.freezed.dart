// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_c.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserC {
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserCCopyWith<UserC> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCCopyWith<$Res> {
  factory $UserCCopyWith(UserC value, $Res Function(UserC) then) =
      _$UserCCopyWithImpl<$Res, UserC>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$UserCCopyWithImpl<$Res, $Val extends UserC>
    implements $UserCCopyWith<$Res> {
  _$UserCCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserCImplCopyWith<$Res> implements $UserCCopyWith<$Res> {
  factory _$$UserCImplCopyWith(
          _$UserCImpl value, $Res Function(_$UserCImpl) then) =
      __$$UserCImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$UserCImplCopyWithImpl<$Res>
    extends _$UserCCopyWithImpl<$Res, _$UserCImpl>
    implements _$$UserCImplCopyWith<$Res> {
  __$$UserCImplCopyWithImpl(
      _$UserCImpl _value, $Res Function(_$UserCImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$UserCImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserCImpl extends _UserC {
  const _$UserCImpl({required this.name}) : super._();

  @override
  final String name;

  @override
  String toString() {
    return 'UserC(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserCImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserCImplCopyWith<_$UserCImpl> get copyWith =>
      __$$UserCImplCopyWithImpl<_$UserCImpl>(this, _$identity);
}

abstract class _UserC extends UserC {
  const factory _UserC({required final String name}) = _$UserCImpl;
  const _UserC._() : super._();

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$UserCImplCopyWith<_$UserCImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
