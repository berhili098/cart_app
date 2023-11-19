import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_c.freezed.dart';

@freezed
class UserC with _$UserC {
  const UserC._();
  const factory UserC(
    {
      required String name
    }
  ) = _UserC;
}