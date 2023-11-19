import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:wiggli_test/checkout/domain/checkout.dart';
import 'package:wiggli_test/checkout/shared/providers.dart';
import 'package:wiggli_test/core/domain/product.dart';
import 'package:wiggli_test/gen/assets.gen.dart';
import 'package:wiggli_test/theme/shared/light_theme.dart';

class ProductItemWidget extends HookConsumerWidget {
  final Product product;
  const ProductItemWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final basketList = ref.watch(basketListProvider);
    final hasBeenAdded =
        useState(basketList.any((element) => element.product == product));

    return Card(
      elevation: 0.00,
      child: Padding(
        padding: EdgeInsets.all(8.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 186.w,
              height: 176.w,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4.0.r),
                child: CachedNetworkImage(
                  height: 152.w,
                  width: 136.w,
                  imageUrl: product.picture,
                  fit: BoxFit.cover,
                  placeholder: (context, url) =>
                      const SizedBox(child: CupertinoActivityIndicator()),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
            ),
            8.verticalSpace,
            SizedBox(
              width: 120.w,
              child: Text(
                product.name,
                style: TextStyle(
                    fontSize: 18.sp,
                    color: primaryDarkColor,
                    overflow: TextOverflow.ellipsis,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Text(
              product.company,
              style: TextStyle(
                  fontSize: 14.sp,
                  overflow: TextOverflow.ellipsis,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(100, 116, 139, 1)),
            ),
            const Spacer(),
            SizedBox(
              width: 186.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${product.price} £",
                    style: TextStyle(
                        fontSize: 20.sp,
                        overflow: TextOverflow.ellipsis,
                        fontWeight: FontWeight.w600),
                  ),
                  GestureDetector(
                    onTap: () {
                      hasBeenAdded.value = !hasBeenAdded.value;
                      Logger().d(basketList
                          .any((element) => element.product == product));
                      if (!basketList
                          .any((element) => element.product == product)) {
                        ref.read(basketListProvider.notifier).update((state) {
                          state.add(Checkout(product: product, quantity: 1 ));
                          return state;
                        });
                      } else {
                        ref.read(basketListProvider.notifier).update((state) {
                          state.remove(basketList
                              .map((e) => e.product == product ? e : null)
                              .firstWhere((element) => element != null));
                          return state;
                        });
                      }
                    },
                    child: Container(
                      height: 38.r,
                      width: 38.r,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 235, 226, 244),
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ref
                                .watch(basketListProvider)
                                .any((element) => element.product == product)
                            ? const Icon(Icons.check, color: Colors.green)
                            : SvgPicture.asset(
                                Assets.icons.plus.path,
                                colorFilter: ColorFilter.mode(
                                    Theme.of(context).colorScheme.primary,
                                    BlendMode.srcIn),
                              ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
