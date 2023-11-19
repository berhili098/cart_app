import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:wiggli_test/checkout/domain/checkout.dart';
import 'package:wiggli_test/checkout/shared/providers.dart';
import 'package:wiggli_test/gen/assets.gen.dart';
import 'package:wiggli_test/theme/shared/light_theme.dart';

class CartItemWidget extends ConsumerWidget {
  final Checkout checkout;
  const CartItemWidget({super.key, required this.checkout});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(basketListProvider, ((before, after) {
      after.map((e) => e.quantity < 1 ? after.remove(e) : e).toList();
      ref.read(basketListProvider.notifier).update((state) {
        state = after;
        return state;
      });
    }));

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            color: const Color.fromRGBO(248, 250, 252, 1),
            borderRadius: BorderRadius.circular(7),
          ),
          padding: const EdgeInsets.all(5.0),
          margin: const EdgeInsets.symmetric(vertical: 5.0),
          child: CachedNetworkImage(
            imageUrl: checkout.product.picture,
            imageBuilder: (context, imageProvider) => Container(
              width: 80.w,
              height: 80.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                shape: BoxShape.rectangle,
                image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
              ),
            ),
            placeholder: (context, url) =>
                const Center(child: CupertinoActivityIndicator()),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
        5.horizontalSpace,
        Expanded(
          child: SizedBox(
            // height: 60.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  checkout.product.name,
                  style: TextStyle(
                    fontSize: 16.sp,
                    overflow: TextOverflow.ellipsis,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  checkout.product.company,
                  style: TextStyle(
                      fontSize: 14.sp,
                      overflow: TextOverflow.ellipsis,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(100, 116, 139, 1)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${checkout.product.price} £",
                      style: TextStyle(
                          fontSize: 18.sp,
                          overflow: TextOverflow.ellipsis,
                          fontWeight: FontWeight.w600,
                          color: primaryDarkColor),
                    ),
                    Row(children: [
                      InkWell(
                        borderRadius: BorderRadius.circular(30),
                        onTap: () {
                          ref.read(basketListProvider.notifier).update((state) {
                            state = state
                                .map((element) =>
                                    element.product == checkout.product
                                        ? element.copyWith(
                                            product: checkout.product,
                                            quantity: element.quantity - 1)
                                        : element)
                                .toList();

                            return state;
                          });
                        },
                        child: Container(
                          height: 38.r,
                          width: 38.r,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.grey
                                  .shade400, // Set the border color to blue
                              width: 1.0, // Set the border width
                              style: BorderStyle.solid, // Set the border style
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: SvgPicture.asset(
                              Assets.icons.minus.path,
                              colorFilter: const ColorFilter.mode(
                                  Colors.black, BlendMode.srcIn),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(
                          "${checkout.quantity}",
                          style: TextStyle(
                              fontSize: 18.sp,
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(51, 65, 85, 1)),
                        ),
                      ),
                      InkWell(
                        borderRadius: BorderRadius.circular(30),
                        onTap: () {
                          ref.read(basketListProvider.notifier).update((state) {
                            state = state
                                .map((element) =>
                                    element.product == checkout.product
                                        ? element.copyWith(
                                            product: checkout.product,
                                            quantity: element.quantity + 1)
                                        : element)
                                .toList();

                            return state;
                          });
                          Logger().log(Level.debug, checkout);
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
                            child: SvgPicture.asset(Assets.icons.plus.path,
                                colorFilter: const ColorFilter.mode(
                                    Color.fromRGBO(147, 51, 234, 1),
                                    BlendMode.srcIn)),
                          ),
                        ),
                      ),
                    ]),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
