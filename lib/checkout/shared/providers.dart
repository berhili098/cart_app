import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wiggli_test/checkout/domain/checkout.dart';

final basketListProvider = StateProvider<List<Checkout>>((ref) => []);
