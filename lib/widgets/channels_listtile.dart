import 'package:flutter/material.dart';

import '../colors.dart';
import '../essential data/status_data.dart';

class ChannelsListtile extends StatelessWidget {
  const ChannelsListtile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: channelsData.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          final channelItem = channelsData[index];
          return ListTile(
              contentPadding: const EdgeInsets.fromLTRB(0, 5.0, 0, 5.0),
              leading: CircleAvatar(
                radius: 30,
                foregroundImage: AssetImage(channelItem['dp']),
              ),
              title: Text(channelItem['name'],
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.labelLarge),
              subtitle: Text(channelItem['followers'],
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 18,
                    color: chipMetaAiTextColor,
                  )),
              trailing: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: chipSelectedBgColor),
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Text("Follow",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white70,
                        )),
                  )));
        });
  }
}
