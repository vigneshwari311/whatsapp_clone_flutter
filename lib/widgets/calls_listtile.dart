import 'package:flutter/material.dart';
import 'package:whatsapp_clone/essential%20data/chat_data.dart';

import '../colors.dart';

class CallsListtile extends StatelessWidget {
  const CallsListtile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: chatData.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          final callData = chatData[index];
          return ListTile(
              contentPadding: const EdgeInsets.fromLTRB(0, 5.0, 13.0, 5.0),
              leading: CircleAvatar(
                radius: 22,
                foregroundImage: AssetImage(callData['profilePicture']),
              ),
              title: Text(callData['name'],
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      color: nameOfPeople,
                      fontWeight: FontWeight.w500,
                      fontSize: 20)),
              subtitle: Row(
                children: [
                  if (callData['outgoing'] == 1)
                    const Icon(
                      Icons.call_made,
                      size: 18,
                      color: chipSelectedTextColor,
                    )
                  else
                    const Icon(
                      Icons.call_received,
                      size: 18,
                      color: chipSelectedTextColor,
                    ),
                  Padding(
                    padding: const EdgeInsets.only(left: 4.0),
                    child: Text(callData['callTime'],
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 18,
                          color: chipMetaAiTextColor,
                        )),
                  ),
                ],
              ),
              trailing: (callData['callType'] == 'voiceCall')
                  ? const Icon(
                      Icons.phone_outlined,
                      size: 25,
                      color: Colors.white,
                    )
                  : Image.asset(
                      "assets/images/video.png",
                      width: 25,
                      height: 25,
                      color: Colors.white,
                    ));
        });
  }
}
