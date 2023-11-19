import 'package:auto_route/auto_route.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wiggli_test/checkout/presentation/widgets/cart_widget.dart';
import 'package:wiggli_test/checkout/shared/providers.dart';
import 'package:wiggli_test/core/extensions/local.dart';
import 'package:wiggli_test/gen/assets.gen.dart';
import 'package:wiggli_test/theme/shared/light_theme.dart';
import 'package:wiggli_test/wrapper/presentation/widgets/search_field.dart';

@RoutePage()
class CheckoutPage extends HookConsumerWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final basketList = ref.watch(basketListProvider);
    final subtotal = basketList.fold(
        0.0,
        (previousValue, element) =>
            previousValue + (element.product.price * element.quantity));
    final subtotalWithDeliveryAndDiscout = subtotal + 23;
    final total = subtotalWithDeliveryAndDiscout -
        (subtotalWithDeliveryAndDiscout * 0.15);
    String promosCode = basketList.isNotEmpty
        ? basketList
            .map((e) => e.promosCode)
            .toList()
            .firstWhere((element) => element.isNotEmpty, orElse: () => "")
        : "";
    final promosCodeController = useTextEditingController(text: promosCode);
    return Scaffold(
        bottomSheet: basketList.isEmpty
            ? const SizedBox.shrink()
            : Card(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        minimumSize: Size(double.infinity, 60.h),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r))),
                    child: Text(
                      context.l10n.checkout,
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
        backgroundColor: Colors.white,
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
              context.l10n.cart,
              style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                  color: primaryDarkColor),
            ),
            centerTitle: true,
          ),
        ),
        body: basketList.isEmpty
            ? Center(child: Text(context.l10n.noitemincart))
            : SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                  child: Column(
                    children: [
                      15.verticalSpace,
                      SizedBox(
                        height: basketList.length * 100.h,
                        child: ListView.builder(
                          itemCount: basketList.length,
                          itemBuilder: (context, index) {
                            final item = basketList[index];
                            return CartItemWidget(
                              checkout: item,
                            );
                          },
                        ),
                      ),
                      15.verticalSpace,
                      Row(
                        children: [
                          Text(
                            context.l10n.voucherDiscout,
                            style: TextStyle(
                                fontSize: 16.sp,
                                overflow: TextOverflow.ellipsis,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(100, 116, 139, 1)),
                          ),
                        ],
                      ),
                      TextFieldSearchWidget(
                        hint: context.l10n.enterVoucherCode,
                        controller: promosCodeController,
                        suffixIcon: Padding(
                          padding: EdgeInsets.all(5.w),
                          child: SvgPicture.asset(
                            Assets.icons.checkVerified02.path,
                            colorFilter: const ColorFilter.mode(
                                Colors.green, BlendMode.srcIn),
                          ),
                        ),
                        readOnly: true,
                      ),
                      const Divider(
                        color: Color.fromRGBO(100, 116, 139, 0.2),
                        thickness: 1,
                      ),
                      15.verticalSpace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            context.l10n.subtotal,
                            style: TextStyle(
                                fontSize: 16.sp,
                                overflow: TextOverflow.ellipsis,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(100, 116, 139, 1)),
                          ),
                          Text(
                            '$subtotal £',
                            style: TextStyle(
                              fontSize: 18.sp,
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            context.l10n.deliveryCost,
                            style: TextStyle(
                                fontSize: 16.sp,
                                overflow: TextOverflow.ellipsis,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(100, 116, 139, 1)),
                          ),
                          Text(
                            "23 £",
                            style: TextStyle(
                              fontSize: 18.sp,
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      12.verticalSpace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            context.l10n.voucherDiscout,
                            style: TextStyle(
                                fontSize: 16.sp,
                                overflow: TextOverflow.ellipsis,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(100, 116, 139, 1)),
                          ),
                          Text(
                            "-15 % £",
                            style: TextStyle(
                                fontSize: 18.sp,
                                overflow: TextOverflow.ellipsis,
                                fontWeight: FontWeight.w500,
                                color: Colors.red),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const DottedLine(
                        dashLength: 10.0,
                        dashColor: Color.fromRGBO(229, 231, 235, 1),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            context.l10n.total,
                            style: TextStyle(
                                fontSize: 24.sp,
                                overflow: TextOverflow.ellipsis,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(100, 116, 139, 1)),
                          ),
                          Text(
                            '${total.toStringAsFixed(2)}'
                            ' £',
                            style: TextStyle(
                              fontSize: 24.sp,
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ));
  }
}
