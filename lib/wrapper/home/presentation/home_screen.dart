import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wiggli_test/core/extensions/local.dart';
import 'package:wiggli_test/core/presentation/app_router.gr.dart';
import 'package:wiggli_test/core/shared/providers.dart';
import 'package:wiggli_test/gen/assets.gen.dart';
import 'package:wiggli_test/theme/shared/light_theme.dart';
import 'package:wiggli_test/wrapper/home/presentation/widgets/category_card.dart';
import 'package:wiggli_test/wrapper/home/presentation/widgets/product_card.dart';
import 'package:wiggli_test/wrapper/presentation/widgets/search_field.dart';
import 'package:wiggli_test/wrapper/shared/providers.dart';

@RoutePage()
class HomePage extends StatefulHookConsumerWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    final user = ref.watch(userProvier);
    final categories = ref.read(categoriesProvider);
    final productsOne = ref.read(productsProvider);
    final newProducts = ref.read(newProductsProvider);
    final isSelected = useState<bool>(false);
    return SafeArea(
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(100.h),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        context.l10n.welcome(user.name),
                        style: TextStyle(
                          color: primaryDarkColor,
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      7.verticalSpace,
                      Text(
                        context.l10n.buyingToday,
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      context.router.push(const CheckoutRoute());
                    },
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
                ],
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  17.verticalSpace,
                  TextFieldSearchWidget(
                    hint: context.l10n.searchProducts,
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(10.w),
                      child: SvgPicture.asset(
                        Assets.icons.searchLg.path,
                      ),
                    ),
                    readOnly: false,
                  ),
                  20.verticalSpace,
                  SizedBox(
                    height: 36.h,
                    child: ListView.separated(

                        // shrinkWrap
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder:
                            // itemBuilder
                            (context, index) {
                          return GestureDetector(
                            onTap: () {
                              isSelected.value = !isSelected.value;
                              ref
                                  .read(categoriesProvider.notifier)
                                  .update((state) => state.map((e) {
                                        if (e == categories[index]) {
                                          return e.copyWith(isSelected: true);
                                        } else {
                                          return e.copyWith(isSelected: false);
                                        }
                                      }).toList());
                            },
                            child: CategoryCard(
                              category: categories[index],
                            ),
                          );
                        },
                        separatorBuilder:
                            // separatorBuilder
                            (context, index) {
                          return 10.horizontalSpace;
                        },
                        itemCount:
                            // itemCount
                            categories.length),
                  ),
                  28.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        context.l10n.trendingSales,
                        style: TextStyle(
                            color: primaryDarkColor,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        context.l10n.seeall,
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  20.verticalSpace,
                  SizedBox(
                    height: 310.h,
                    child: ListView.separated(
                        // shrinkWrap

                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder:
                            // itemBuilder
                            (context, index) {
                          return GestureDetector(
                            onTap: () {
                              context.router.push(ProductRoute(
                                product: productsOne[index],
                              ));
                            },
                            child: ProductItemWidget(
                              product: productsOne[index],
                            ),
                          );
                        },
                        separatorBuilder:
                            // separatorBuilder
                            (context, index) {
                          return 20.verticalSpace;
                        },
                        itemCount:
                            // itemCount
                            productsOne.length),
                  ),
                  28.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        context.l10n.newarrivals,
                        style: TextStyle(
                            color: primaryDarkColor,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        context.l10n.seeall,
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  20.verticalSpace,
                  SizedBox(
                    height: 310.h,
                    child: ListView.separated(
                        // shrinkWrap

                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder:
                            // itemBuilder
                            (context, index) {
                          return InkWell(
                            onTap: () {
                              context.router.push(ProductRoute(
                                product: newProducts[index],
                              ));
                            },
                            child: ProductItemWidget(
                              product: newProducts[index],
                            ),
                          );
                        },
                        separatorBuilder:
                            // separatorBuilder
                            (context, index) {
                          return 20.verticalSpace;
                        },
                        itemCount:
                            // itemCount
                            newProducts.length),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
