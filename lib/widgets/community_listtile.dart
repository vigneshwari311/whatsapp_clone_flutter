import 'package:flutter/material.dart';

class CommunityListtile extends StatelessWidget {
  final String communityName;
  const CommunityListtile({super.key, required this.communityName});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Container(
          width: 50,
          height: 50,
          decoration: const BoxDecoration(
            color: Colors.grey,
          ),
          child: const Icon(size: 38, color: Colors.white, Icons.groups),
        )),

        title: Text(
        communityName,
        style: Theme.of(context).textTheme.displayMedium,
      ),
    );
  }
}