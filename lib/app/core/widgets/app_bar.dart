import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const CustomAppBar(this.title, {super.key});
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    final appBarTheme = Theme.of(context).appBarTheme;
    return AppBar(
      title: Text(title,
          style: TextStyle(
            color: theme.onPrimary,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          )),
      centerTitle: appBarTheme.centerTitle,
      backgroundColor: appBarTheme.backgroundColor,
      elevation: appBarTheme.elevation,
      iconTheme: appBarTheme.iconTheme,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
