import 'package:flutter/material.dart';

import '../colors.dart';
import '../essential data/status_data.dart';

class ListtileWp extends StatefulWidget {
  const ListtileWp({super.key});

  @override
  State<ListtileWp> createState() => _ListtileWpState();
}

class _ListtileWpState extends State<ListtileWp> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: statusData.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          final status = statusData[index];
          return ListTile(
            contentPadding: const EdgeInsets.fromLTRB(0, 5.0, 12.0, 5.0),
            leading: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: status['seen'] == 0
                      ? Border.all(color: chipSelectedTextColor, width: 3)
                      : null),
              child: CircleAvatar(
                radius: 30,
                foregroundImage: AssetImage(
                  status['profilePicture'],
                ),
              ),
            ),
            title: Text(status['name'],
                style: Theme.of(context).textTheme.labelLarge),
            subtitle: Text(status['time'],
                style: Theme.of(context).textTheme.labelSmall),
          );
        });
  }
}
