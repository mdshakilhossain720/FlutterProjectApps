import 'package:flutter/material.dart';

import '../constrant/color_resourse.dart';
import '../constrant/images.dart';
import '../method/size_box.dart';

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