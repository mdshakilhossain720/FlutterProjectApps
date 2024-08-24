import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rbftestingproject/global/constrant/color_resourse.dart';
import 'package:rbftestingproject/global/constrant/images.dart';
import 'package:rbftestingproject/global/method/size_box.dart';
import 'package:rbftestingproject/global/style/text_style.dart';
import 'package:rbftestingproject/global/widgets/button/custom_button.dart';
import 'package:rbftestingproject/global/widgets/custom_textfield.dart';

import 'regestion_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

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
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
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
                      Get.to(() => const SignUp());
                    },
                    style: buttonStyle,
                    child: Text("Login", style: TextStyles.loginBtnStyle())),
                sizedBoxH(50),
                DividerResuable(),
                const Text(
                  "Expoler",
                  style: TextStyle(
                    fontSize: 15,
                    color: ColorRes.red,
                  ),
                ),
                const Text("with accout"),
                const ContainerResuable(),
                sizedBoxH(10),
                const ContainerResuable(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ContainerResuable extends StatelessWidget {
  const ContainerResuable({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50,
      decoration: BoxDecoration(
        color: ColorRes.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(Images.google),
          sizedBoxW(15),
          const Text("Continue with Google"),
        ],
      ),
    );
  }
}

class DividerResuable extends StatelessWidget {
  const DividerResuable({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 2,
            width: 200,
            color: ColorRes.grey,
          ),
        ),
        const Text(
          "OR",
          style: TextStyle(
            fontSize: 15,
            color: ColorRes.grey,
          ),
        ),
        Expanded(
          child: Container(
            height: 2,
            width: 200,
            color: ColorRes.grey,
          ),
        ),
      ],
    );
  }
}
