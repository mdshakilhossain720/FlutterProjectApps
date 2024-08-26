import 'package:flutter/material.dart';

import '../constrant/color_resourse.dart';

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