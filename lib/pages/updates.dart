import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';
import 'package:whatsapp_clone/widgets/app_bar.dart';
import 'package:whatsapp_clone/widgets/channels_listtile.dart';
import 'package:whatsapp_clone/widgets/floating_action_button_updates.dart';

import '../widgets/listtile.dart';

class Updates extends StatelessWidget {
  const Updates({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWp(
        title: Text(
          "Updates",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        iconButton:
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Status",
                style: TextStyle(
                    fontSize: 25,
                    color: nameOfPeople,
                    fontWeight: FontWeight.w600),
              ),
              ListTile(
                  contentPadding: const EdgeInsets.fromLTRB(0, 5.0, 12.0, 5.0),
                  leading: Stack(children: [
                    const CircleAvatar(
                      radius: 30,
                      foregroundImage:
                          AssetImage("assets/images/status_dp/my_status.jpeg"),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: Container(
                        height: 22,
                        width: 22,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: chipSelectedTextColor),
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
                  title: Text("My Status",
                      style: Theme.of(context).textTheme.labelLarge),
                  subtitle: Text("Tap to add staus update",
                      style: Theme.of(context).textTheme.labelSmall)),
              Text("Recent updates",
                  style: Theme.of(context).textTheme.labelSmall),
              const ListtileWp(),
              const Divider(
                color: chipMetaAiTextColor,
                thickness: 0.3,
              ),
              const Text(
                "Channels",
                style: TextStyle(
                    fontSize: 25,
                    color: nameOfPeople,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "Stay updated on topic that matter to you. Find channels to follow below.",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                "Find channels to follow",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              const ChannelsListtile(),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    shape: WidgetStateProperty.all(RoundedRectangleBorder(
                        side: BorderSide(
                            color: Colors.white.withOpacity(0.4), width: 0.3),
                        borderRadius: BorderRadius.circular(50))),
                  ),
                  child: const Text(
                    "Explore more",
                    style:
                        TextStyle(color: chipSelectedTextColor, fontSize: 16),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: const FloatingActionButtonUpdates()
    );
  }
}
