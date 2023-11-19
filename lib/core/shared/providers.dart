import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wiggli_test/core/domain/user_c.dart';
import 'package:wiggli_test/core/presentation/app_router.dart';

final appRouterProvider = Provider<AppRouter>(
  (ref) => AppRouter(),
);

final localizationProvider = Provider<Locale>(
  (ref) => const Locale('en', 'US'),
);

final userProvier = StateProvider<UserC>((ref) => const UserC(name: 'Ayoub'));
