import 'package:flutter/material.dart';
import 'package:whatsapp_clone/essential%20data/chat_data.dart';

import '../colors.dart';

class ListViewOfChats extends StatefulWidget {
  const ListViewOfChats({super.key});

  @override
  State<ListViewOfChats> createState() => _ListViewOfChatsState();
}

class _ListViewOfChatsState extends State<ListViewOfChats> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: chatData.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          final chat = chatData[index];
          return ListTile(
            contentPadding: const EdgeInsets.fromLTRB(8.0, 5.0, 12.0, 5.0),
            leading: CircleAvatar(
              radius: 30,
              foregroundImage: AssetImage(chat['profilePicture']),
            ),
            title: Text(chat['name'],
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    color: nameOfPeople,
                    fontWeight: FontWeight.w500,
                    fontSize: 20)),
            subtitle: Text(chat['message'],
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 18,
                  color: chipMetaAiTextColor,
                )),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 10),
                  child: Text(chat['time'].toString(),
                      style: TextStyle(
                        fontSize: 13,
                        color: (chat['unreadCount'] > 0)
                            ? chipSelectedTextColor
                            : chipMetaAiTextColor,
                      )),
                ),
                if (chat['unreadCount'] > 0)
                  Container(
                    height: 20,
                    width: 20,
                    decoration: const BoxDecoration(
                      color: chipSelectedTextColor,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(chat['unreadCount'].toString(),
                          style: const TextStyle(
                              fontSize: 12, color: Colors.black)),
                    ),
                  ),
              ],
            ),
          );
        });
  }
}
