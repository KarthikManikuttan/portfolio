import 'package:flutter/material.dart';
import 'package:portfolio/utils/constant/app_colors.dart';

class CustomHeader extends StatefulWidget {
  const CustomHeader({super.key});

  @override
  State<CustomHeader> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomHeader> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Center(
      child: Container(
        width: size.width / 2,
        height: 50,
        margin: EdgeInsets.only(top: 50),
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.12),
        decoration: BoxDecoration(
          color: AppColors.white.withValues(alpha: 0.07),
          gradient: LinearGradient(
            colors: AppColors.customHeaderBgGradientColors,
          ),
          borderRadius: BorderRadius.all(Radius.circular(100)),
          border: Border.all(
            color: AppColors.customHeaderBorderColor,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Projects",
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(color: AppColors.customHeaderTextColor),
            ),
            Text(
              "Blog",
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(color: AppColors.customHeaderTextColor),
            ),
            Text(
              "About",
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(color: AppColors.customHeaderTextColor),
            ),
            Text(
              "Contact",
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(color: AppColors.customHeaderTextColor),
            ),
          ],
        ),
      ),
    );
  }
}
