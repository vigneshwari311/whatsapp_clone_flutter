import 'package:flutter/material.dart';

import '../colors.dart';

class FloatingActionButtonUpdates extends StatelessWidget {
  const FloatingActionButtonUpdates({super.key});

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
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              onPressed: () {},
              backgroundColor: Colors.black,
              child: const Icon(
                Icons.edit,
                color: nameOfPeople,
              )),
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
            child: Image.asset(
              "assets/images/camera.png",
              width: 30,
              height: 30,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
