import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wiggli_test/checkout/domain/checkout.dart';
import 'package:wiggli_test/checkout/shared/providers.dart';
import 'package:wiggli_test/core/domain/product.dart';
import 'package:wiggli_test/core/extensions/local.dart';
import 'package:wiggli_test/core/presentation/app_router.gr.dart';
import 'package:wiggli_test/gen/assets.gen.dart';
import 'package:wiggli_test/theme/shared/light_theme.dart';
import 'package:wiggli_test/wrapper/presentation/widgets/search_field.dart';

@RoutePage()
class ProductPage extends ConsumerWidget {
  final Product product;
  const ProductPage({required this.product, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final basketList = ref.watch(basketListProvider);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.h),
        child: AppBar(
          leading: GestureDetector(
            onTap: () => context.router.pop(),
            child: Padding(
              padding: EdgeInsets.all(14.w),
              child: SvgPicture.asset(
                Assets.icons.arrowLeft.path,
                height: 14.h,
                width: 14.h,
              ),
            ),
          ),
          title: Text(
            context.l10n.productDeatails,
            style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
                color: primaryDarkColor),
          ),
          centerTitle: true,
          actions: [
            GestureDetector(
              onTap: () {
                context.router.push(const CheckoutRoute());
              },
              child: Padding(
                padding: EdgeInsets.only(right: 16.0.w),
                child: Stack(
                  children: [
                    Container(
                      height: 43.w,
                      width: 43.w,
                      padding: EdgeInsets.all(10.w),
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(50.r)),
                      child: SvgPicture.asset(
                        Assets.icons.shoppingBag03.path,
                      ),
                    ),
                    Positioned(
                      top: 8.h,
                      right: 8.w,
                      child: Container(
                        height: 12.h,
                        width: 12.w,
                        decoration: BoxDecoration(
                            color: redColor,
                            borderRadius: BorderRadius.circular(8.r)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: CustomScrollView(
        // controller: _scrollController,
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            expandedHeight: 360.w,
            pinned: true,
            floating: true,
            elevation: 0.0,
            titleSpacing: 0,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsets.zero,
              background: CachedNetworkImage(
                imageUrl: product.picture,
                imageBuilder: (context, imageProvider) => Container(
                  width: 250.w,
                  height: 250.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                        image: imageProvider, fit: BoxFit.cover),
                  ),
                ),
                placeholder: (context, url) =>
                    const Center(child: CupertinoActivityIndicator()),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(5.h),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 15.h,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).colorScheme.background,
                      width: 0.0,
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8.r),
                      topRight: Radius.circular(8.r),
                    ),
                    color: Theme.of(context).scaffoldBackgroundColor,
                  ),
                )),
          ),
          SliverToBoxAdapter(
              child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.name,
                          style: TextStyle(
                            fontSize: 20.sp,
                            overflow: TextOverflow.ellipsis,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          product.company,
                          style: TextStyle(
                              fontSize: 18.sp,
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(100, 116, 139, 1)),
                        ),
                      ],
                    ),
                    Text(
                      "${product.price} £",
                      style: TextStyle(
                          fontSize: 27.sp,
                          overflow: TextOverflow.ellipsis,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(51, 65, 85, 1)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .43,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(Assets.icons.star01.path,
                          colorFilter: const ColorFilter.mode(
                              Color.fromRGBO(252, 211, 77, 1),
                              BlendMode.srcIn)),
                      Text(
                        "4,4",
                        style: TextStyle(
                            fontSize: 16.sp,
                            overflow: TextOverflow.ellipsis,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(100, 116, 139, 1)),
                      ),
                      Container(
                        height: 20,
                        width: 1,
                        color: Colors.black,
                      ),
                      Text(context.l10n.reviews(10),
                          style: TextStyle(
                              fontSize: 16.sp,
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(14, 165, 233, 1))),
                    ],
                  ),
                ),
                20.verticalSpace,
                Text(
                  context.l10n.aboutthisitem,
                  style: TextStyle(
                    fontSize: 20.sp,
                    overflow: TextOverflow.ellipsis,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                10.verticalSpace,
                Text(
                  product.description,
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(100, 116, 139, 1)),
                ),
                20.verticalSpace,
                Text(
                  context.l10n.promosCode,
                  style: TextStyle(
                    fontSize: 20.sp,
                    overflow: TextOverflow.ellipsis,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                10.verticalSpace,
                TextFieldSearchWidget(
                  height: 80.h,
                  hint: context.l10n.enterPromosCode,
                  suffixIcon: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        context.l10n.applyCode,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  readOnly: false,
                ),
                10.verticalSpace,
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        minimumSize: Size(double.infinity, 50.h),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r))),
                    onPressed: () {
                      if (!basketList
                          .any((element) => element.product == product)) {
                        ref.read(basketListProvider.notifier).update((state) {
                          state.add(Checkout(product: product, quantity: 1));
                          return state;
                        });
                      }
                      Fluttertoast.showToast(
                          msg: context.l10n.itemAddedToBag,
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.TOP,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.green,
                          textColor: Colors.white,
                          fontSize: 16.0.sp);
                    },
                    child: Text(
                      context.l10n.addItemToBag,
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    )),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
