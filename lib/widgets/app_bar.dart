import 'package:flutter/material.dart';
import '../colors.dart';

class AppBarWp extends StatelessWidget implements PreferredSizeWidget {
  final Widget title;
  final IconButton? iconButton;

  const AppBarWp({super.key, 
  required this.title,
  this.iconButton});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: bgColor,
      title: title,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.qr_code_scanner),
        ),
        IconButton(
            onPressed: () {}, icon: const Icon(Icons.photo_camera_outlined)),

            if (iconButton != null) iconButton!,
        IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
      ],
    );
  }

 
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
