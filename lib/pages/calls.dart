import 'package:flutter/material.dart';

import '../colors.dart';
import '../widgets/app_bar.dart';
import '../widgets/calls_listtile.dart';

class Calls extends StatelessWidget {
  const Calls({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWp(
        title: Text(
          "Calls",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        iconButton:
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 17.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              Text(
                'Favourites',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              const SizedBox(
                height: 21,
              ),
              Row(
                children: [
                  const CircleAvatar(
                    radius: 21,
                    backgroundColor: chipSelectedTextColor,
                    child: Icon(Icons.favorite, color: Colors.black, size: 24),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Add favourite',
                    style: Theme.of(context).textTheme.displayMedium,
                  )
                ],
              ),
              const SizedBox(
                height: 21,
              ),
              Text(
                'Recent',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              const CallsListtile()
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: SizedBox(
        height: 60,
        width: 60,
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: chipSelectedTextColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          child: const Icon(
            size: 30,
            Icons.add_ic_call_sharp,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
