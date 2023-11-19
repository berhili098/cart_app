import 'package:auto_route/auto_route.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wiggli_test/core/domain/product.dart';
import 'package:wiggli_test/core/extensions/local.dart';
import 'package:wiggli_test/core/presentation/app_router.gr.dart';
import 'package:wiggli_test/gen/assets.gen.dart';
import 'package:wiggli_test/theme/shared/light_theme.dart';

@RoutePage()
class WrapperPage extends StatelessWidget {
  const WrapperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24.r),
      child: AutoTabsScaffold(
        bottomNavigationBuilder: (_, tabsRouter) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(24.r),
            child: DotNavigationBar(
              paddingR: EdgeInsets.symmetric(horizontal: 24.w),
              itemPadding: EdgeInsets.symmetric(horizontal: 12.w),
              enableFloatingNavBar: false,
              borderRadius: 24.r,
              currentIndex: tabsRouter.activeIndex,
              onTap: tabsRouter.setActiveIndex,
              dotIndicatorColor: Theme.of(context).colorScheme.primary,
              unselectedItemColor: lightColor,
              items: [
                DotNavigationBarItem(
                  icon: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        Assets.icons.homeLine.path,
                        colorFilter: ColorFilter.mode(
                            tabsRouter.activeIndex == 0
                                ? Theme.of(context).colorScheme.primary
                                : Colors.black.withOpacity(0.5),
                            BlendMode.srcIn),
                      ),
                      5.verticalSpace,
                      Text(
                        context.l10n.home,
                        style: TextStyle(
                            color: tabsRouter.activeIndex == 0
                                ? Theme.of(context).colorScheme.primary
                                : Colors.black.withOpacity(0.5)),
                      )
                    ],
                  ),
                  selectedColor: Theme.of(context).colorScheme.primary,
                ),
                DotNavigationBarItem(
                  icon: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        Assets.icons.heartRounded.path,
                        colorFilter: ColorFilter.mode(
                            tabsRouter.activeIndex == 1
                                ? Theme.of(context).colorScheme.primary
                                : Colors.black.withOpacity(0.5),
                            BlendMode.srcIn),
                      ),
                      5.verticalSpace,
                      Text(
                        context.l10n.favorite,
                        style: TextStyle(
                            color: tabsRouter.activeIndex == 1
                                ? Theme.of(context).colorScheme.primary
                                : Colors.black.withOpacity(0.5)),
                      )
                    ],
                  ),
                  selectedColor: Colors.black,
                ),
                DotNavigationBarItem(
                  icon: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        Assets.icons.bell01.path,
                        colorFilter: ColorFilter.mode(
                            tabsRouter.activeIndex == 2
                                ? Theme.of(context).colorScheme.primary
                                : Colors.black.withOpacity(0.5),
                            BlendMode.srcIn),
                      ),
                      5.verticalSpace,
                      Text(
                        context.l10n.notification,
                        style: TextStyle(
                            color: tabsRouter.activeIndex == 2
                                ? Theme.of(context).colorScheme.primary
                                : Colors.black.withOpacity(0.5)),
                      )
                    ],
                  ),
                  selectedColor: Colors.black,
                ),
                DotNavigationBarItem(
                  icon: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        Assets.icons.user03.path,
                        colorFilter: ColorFilter.mode(
                            tabsRouter.activeIndex == 3
                                ? Theme.of(context).colorScheme.primary
                                : Colors.black.withOpacity(0.5),
                            BlendMode.srcIn),
                      ),
                      5.verticalSpace,
                      Text(
                        context.l10n.profile,
                        style: TextStyle(
                            color: tabsRouter.activeIndex == 3
                                ? Theme.of(context).colorScheme.primary
                                : Colors.black.withOpacity(0.5)),
                      )
                    ],
                  ),
                  selectedColor: Colors.black,
                ),
              ],
            ),
          );
        },
        routes: [
          const HomeRoute(),
          const FavoriteRoute(),
          const NotificationRoute(),
          const ProfileRoute(),
          ProductRoute(
              product: const Product(
                  name: 'name',
                  company: 'company',
                  price: 3,
                  description: 'description',
                  picture: 'picture')),
        ],
      ),
    );
  }
}
