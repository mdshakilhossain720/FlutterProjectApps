import 'package:flutter/material.dart';
import 'package:rbftestingproject/global/constrant/color_resourse.dart';
import 'package:rbftestingproject/global/constrant/images.dart';
import 'package:rbftestingproject/global/method/size_box.dart';
import 'package:rbftestingproject/global/style/text_style.dart';
import 'package:rbftestingproject/global/widgets/button/custom_button.dart';

import 'package:rbftestingproject/global/widgets/custom_textfield.dart';


class ResetPassword extends StatelessWidget {
  ResetPassword ({super.key});

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
               CustomTextField(
                  controller: emailController,
                  hinText: 'Enter email or phone number',
                ),
                sizedBoxH(7),
                Text(
                  "password",
                  style: TextStyles.loginTextStyle(),
                ),
               
                sizedBoxH(20),
                ElevatedButton(
                    onPressed: () {
                      showDialog(
		context: context,
		builder: (BuildContext context) {
					return Expanded(
					child: AlertDialog(
            backgroundColor: Color(0xff445069),
						title: const Text(' Successfully Set', textAlign:TextAlign.center,style: TextStyle(
              fontSize: 20,
              color: ColorRes.white,
              fontWeight: FontWeight.bold
            ),),
						content: const Text("Your password has been updated successfully!\nNow you can login.",textAlign:TextAlign.center,style: TextStyle(
              fontSize: 15,
              color: ColorRes.white,
              fontWeight: FontWeight.w500
            ),),
            actions: <Widget>[
              ElevatedButton(onPressed: (){},style: buttonStyle, child:Text("save"))
             
            ],
						
				),
		);
	},
);

                      

                     
                    },
                    style: buttonStyle,
                    child: Text("Login", style: TextStyles.loginBtnStyle())),
                sizedBoxH(50),
                
                    
                
                   
                  ],
                
              
            ),
          ),
        ),
      ),
    );
  }
}
