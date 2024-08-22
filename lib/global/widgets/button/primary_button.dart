
import 'package:flutter/material.dart';
import '../../constrant/color_resourse.dart';

class RoundedCustomButton extends StatelessWidget {
  final String title;
  final Color? titleColor;
  final double? btnHeight;
  final double? btnWidth;
  final Widget? icon;
  final Color? bgColor;
  final Color? borderColor;
  final TextStyle? textStyle;
  final VoidCallback onPressed;
  final double? borderRadius;
  final double? paddingAll;
  final TextAlign? textAlign;

  const RoundedCustomButton({
    Key? key,
    required this.title,
    this.titleColor,
    this.btnHeight,
    this.btnWidth,
    this.icon,
    this.bgColor,
    this.borderColor,
    this.textStyle,
    required this.onPressed,
    this.borderRadius,
    this.paddingAll,
    this.textAlign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: btnHeight ?? 50,
      width: btnWidth ?? MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(paddingAll ?? 0),
          backgroundColor: bgColor ?? ColorRes.getButtonColor(context),
          // shadowColor: ColorRes.red,
          // side: BorderSide(color: borderColor ?? ColorRes.red),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(borderRadius ?? 8),
            ),
          ),
        ),
        child: icon != null
            ? Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon ?? const SizedBox.shrink(),
            const SizedBox(width: 5),
            Text(
              title,
              textAlign: textAlign,
              style: textStyle ?? TextStyle( color: titleColor),
            )
          ],
        )
            : Text(
          title,
          style: textStyle ??
              const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: ColorRes.white,
              ),
        ),
      ),
    );
  }
}
