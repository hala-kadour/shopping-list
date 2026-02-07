import 'package:flutter/material.dart';

class CustomMainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomMainAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        "Shopping List",
        style: Theme.of(
          context,
        ).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
      ),
      actions: [
        Icon(Icons.more_vert, color: Theme.of(context).colorScheme.onPrimary),
      ],
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 56.0);
}
