import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constrant/color_resourse.dart';
import '../../style/font_style/montserrat.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool automaticallyImplyLeading;
  final bool? centerTitle;
  final String? title;
  final Color? textColor;
  final Color? backgroundColor;
  final Widget? leading;
  final List<Widget>? actionWidget;

  const CustomAppBar({
    super.key,
    this.automaticallyImplyLeading = true,
    this.centerTitle,
    this.title,
    this.textColor,
    this.backgroundColor,
    this.leading,
    this.actionWidget,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor ?? ColorRes.getDarkLightAppBarColor(context),
      automaticallyImplyLeading: automaticallyImplyLeading,
      centerTitle: centerTitle ?? false,
      elevation: 0,
      leading: leading ??
          IconButton(
            splashRadius: 0.1,
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: ColorRes.getWhiteBlackColor(context),
              size: 16,
            ),
          ),
      title: Text(
        title ?? "",
        style: montserratSemiBold.copyWith(
          color: textColor ?? ColorRes.getWhiteBlackColor(context),
        ),
      ),
      actions: actionWidget,
    );
  }
}
