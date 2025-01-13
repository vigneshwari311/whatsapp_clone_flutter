import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/community_listtile.dart';

import '../colors.dart';
import '../widgets/app_bar.dart';

class Communities extends StatelessWidget {
  const Communities({super.key});

  @override
  Widget build(BuildContext context) {
    final clipWidget = ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Container(
          width: 50,
          height: 50,
          decoration: const BoxDecoration(
            color: Colors.grey,
          ),
          child: const Icon(size: 38, color: Colors.white, Icons.groups),
        ));
    return Scaffold(
      appBar: AppBarWp(
          title: Text(
        "Communities",
        style: Theme.of(context).textTheme.bodyMedium,
      )),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Stack(clipBehavior: Clip.none, children: [
                  clipWidget,
                  Positioned(
                    right: -6,
                    bottom: -6,
                    child: Container(
                      height: 24,
                      width: 24,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: chipSelectedTextColor,
                          border: Border.all(color: Colors.black)),
                      child: const Center(
                        child: Icon(
                          size: 18,
                          Icons.add,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  )
                ]),
                const SizedBox(
                  width: 16,
                ),
                Text(
                  "New community",
                  style: Theme.of(context).textTheme.displayMedium,
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 14.0),
            child: Divider(
              color: Colors.black,
              thickness: 8,
            ),
          ),
          const CommunityListtile(
              communityName: 'International Flutter Developer'),
          const SizedBox(
            height: 10,
          ),
          const CommunityListtile(communityName: 'CSE'),
          const Divider(
            color: chipMetaAiTextColor,
            thickness: 0.3,
          ),
          ListTile(
            contentPadding: const EdgeInsets.fromLTRB(25.0, 0, 12.0, 5.0),
            leading: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(color: chipSelectedBgColor),
                  child: const Icon(
                      size: 30, color: Colors.white, Icons.volume_up),
                )),
            title: Text(
              'Announcements',
              style: Theme.of(context).textTheme.displayMedium,
            ),
            subtitle: Text(
              'Group "XYZ" was added',
              style: Theme.of(context).textTheme.labelSmall,
            ),
            trailing: const Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: Text(
                "07/01/25",
                style: TextStyle(color: chipMetaAiTextColor, fontSize: 12),
              ),
            ),
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
                child: Icon(
                  Icons.keyboard_arrow_right_outlined,
                  size: 30,
                  color: chipMetaAiTextColor,
                ),
              ),
              Text(
                "View all",
                style: TextStyle(fontSize: 18, color: chipMetaAiTextColor),
              ),
            ],
          ),
          const Divider(
            color: Colors.black,
            thickness: 8,
          ),
        ],
      ),
    );
  }
}
