import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rbftestingproject/global/constrant/color_resourse.dart';
import 'package:rbftestingproject/global/constrant/images.dart';
import 'package:rbftestingproject/global/method/size_box.dart';
import 'package:rbftestingproject/global/style/text_style.dart';
import 'package:rbftestingproject/global/widgets/button/custom_button.dart';
import 'package:rbftestingproject/global/widgets/custom_textfield.dart';




class ForgetPasswordScreen extends StatelessWidget {
  ForgetPasswordScreen({super.key});

  final emailController = TextEditingController();
  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                sizedBoxH(80),
                Center(
                  child: Image.asset(
                    Images.rbfgroupbdIcon,
                    height: 100,
                    width: 200,
                  ),
                ),
                Text(
                  "Email or phone number",
                  style: TextStyles.loginTextStyle(),
                ),
                sizedBoxH(7),
                CustomTextField(
                  controller: emailController,
                  hinText: 'Enter email or phone number',
                ),
                sizedBoxH(7),
                
                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forget Password ?",
                          style: TextStyles.loginTextStyle().copyWith(
                            color: ColorRes.loginForgetColor,
                          ),
                        ))),
                sizedBoxH(20),
                ElevatedButton(
                    onPressed: () {
                     
                    },
                    style: buttonStyle,
                    child: Text("Login", style: TextStyles.loginBtnStyle())),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
