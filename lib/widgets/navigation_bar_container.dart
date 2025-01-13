import 'package:flutter/material.dart';

import '../colors.dart';

class NavigationBarContainer extends StatelessWidget {
  final Widget childWidget ;
  const NavigationBarContainer({super.key,required this.childWidget});

  @override
  Widget build(BuildContext context) {
    return Container(
                        decoration: BoxDecoration(
                            color: chipSelectedBgColor,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(20)),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 6),
                        child: childWidget,
                      );
  }
}