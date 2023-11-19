// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../domain/category.dart';

class CategoryCard extends StatelessWidget {
  final Category category;
  const CategoryCard({required this.category, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36.h,
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: BoxDecoration(
        color: category.isSelected
            ? Theme.of(context).colorScheme.primary
            : Colors.transparent,
        border: Border.all(color: Colors.grey.withOpacity(0.5)),
        borderRadius: BorderRadius.circular(25.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          category.image == null
              ? const SizedBox.shrink()
              : SvgPicture.asset(category.image!,
                  colorFilter: ColorFilter.mode(
                      category.isSelected
                          ? Colors.white
                          : Colors.black.withOpacity(0.1),
                      BlendMode.srcIn)),
          category.image == null ? const SizedBox.shrink() : 8.horizontalSpace,
          Text(category.name,
              style: TextStyle(
                  color: !category.isSelected ? Colors.black : Colors.white,
                  fontSize: 14.sp)),
        ],
      ),
    );
  }
}
