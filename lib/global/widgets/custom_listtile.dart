import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final Widget? leading;
  final String title;
  final Widget? trailing;
  final void Function()? onTap;

  const CustomListTile({
    super.key,
    this.leading,
    required this.title,
    this.trailing,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading,
      visualDensity: const VisualDensity(horizontal: 0, vertical: -1),
      minLeadingWidth: 0,
      onTap: onTap,
      title: Text(title),
      trailing: trailing,
    );
  }
}
