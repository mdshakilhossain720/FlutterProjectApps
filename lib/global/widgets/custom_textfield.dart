import 'package:flutter/material.dart';
import 'package:rbftestingproject/global/constrant/color_resourse.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField(
      {super.key,
      required this.controller,
      this.textInputType = TextInputType.text,
      this.isobscureText=false,
      this.obscuringCharacter='*',
      this.hinText,
      this.prefixIcon,
      this.suffixIcon});

  final TextEditingController controller;
  final TextInputType? textInputType;
  final bool? isobscureText;
  final String? obscuringCharacter;
  final String? hinText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return TextFormField(
      controller: controller,
      keyboardType: textInputType,
      obscureText: isobscureText!,
      obscuringCharacter: obscuringCharacter!,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(top: 12),
        constraints: BoxConstraints(
          maxHeight: height * 0.065,
          maxWidth: width,
        ),
        filled: true,
        fillColor: ColorRes.darkTextFieldColor,
        hintText: hinText,
        hintStyle: TextStyle(
          color:ColorRes.formTextColor,
        ),
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: ColorRes.borderGrey,
              width: 1,
            )),

        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: ColorRes.borderGrey,
              width: 1,
            )),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: ColorRes.borderGrey,
              width: 1,
            )),
      ),
    );
  }
}
