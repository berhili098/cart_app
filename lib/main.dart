import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wiggli_test/core/shared/app_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();

  runApp(
    // ProviderScope(
    //   observers: kDebugMode
    //       ? [
    //           StateLogger(),
    //         ]
    //       : null,
    //   child: const AppWidget(),
    // ),
    const ProviderScope(child: AppWidget()),
  );
}
