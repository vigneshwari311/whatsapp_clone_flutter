import 'package:flutter/material.dart';

import '../colors.dart';

class FloatingActionButtonHome extends StatelessWidget {
  const FloatingActionButtonHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        //meta ai
        SizedBox(
          height: 40,
          width: 40,
          child: FloatingActionButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            onPressed: () {},
            backgroundColor: Colors.black,
            child: Image.asset("assets/images/meta_ai_logo.png"),
          ),
        ),

        const SizedBox(
          height: 10,
        ),

        //contact
        SizedBox(
          height: 60,
          width: 60,
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: chipSelectedTextColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            child: const Icon(
              size: 28,
              Icons.add_comment,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
