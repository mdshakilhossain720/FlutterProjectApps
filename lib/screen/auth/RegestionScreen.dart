import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rbftestingproject/global/constrant/color_resourse.dart';
import 'package:rbftestingproject/global/constrant/images.dart';
import 'package:rbftestingproject/global/method/size_box.dart';
import 'package:rbftestingproject/global/style/text_style.dart';
import 'package:rbftestingproject/global/widgets/button/custom_button.dart';
import 'package:rbftestingproject/global/widgets/containerresuble.dart';
import 'package:rbftestingproject/global/widgets/custom_textfield.dart';
import 'package:rbftestingproject/global/widgets/dividerresuble.dart';

import 'reset_password.dart';

class Regestionscreen extends StatelessWidget {
  Regestionscreen({super.key});

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
                Text(
                  "password",
                  style: TextStyles.loginTextStyle(),
                ),
                sizedBoxH(7),
                CustomTextField(
                  controller: emailController,
                  hinText: 'Enter password',
                ),
                sizedBoxH(7),
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
                Text(
                  "Email or phone number",
                  style: TextStyles.loginTextStyle(),
                ),
                sizedBoxH(7),
                CustomTextField(
                  controller: emailController,
                  hinText: 'Enter email or phone number',
                ),
                sizedBoxH(20),
                ElevatedButton(
                    onPressed: () {
                      Get.to(ResetPassword());
                    },
                    style: buttonStyle,
                    child: Text("Login", style: TextStyles.loginBtnStyle())),
                sizedBoxH(50),
                const DividerResuable(),
                const Center(
                  child: Text(
                    "Expoler",
                    style: TextStyle(
                      fontSize: 15,
                      color: ColorRes.red,
                    ),
                  ),
                ),
                sizedBoxH(15),
                Center(
                    child: Text("Continue with account",
                        style: TextStyles.loginwith())),
                sizedBoxH(20),
                const ContainerResuable(),
                sizedBoxH(10),
                const ContainerResuable(),
                sizedBoxH(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don’t have account?",
                      style: TextStyles.loginBtnStyle(),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        " Sign in",
                        style: TextStyles.loginBtnStyle()
                            .copyWith(color: ColorRes.blue, fontSize: 20),
                      ),
                    ),
                    Text(
                      " here",
                      style: TextStyles.loginBtnStyle(),
                    ),
                    sizedBoxH(30),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
