import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/app_bar.dart';
import 'package:whatsapp_clone/widgets/chat_list_view.dart';
import 'package:whatsapp_clone/widgets/chip_home.dart';
import 'package:whatsapp_clone/widgets/floating_action_button_home.dart';

import '../colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWp(
          title: Text(
        "WhatsApp",
        style: Theme.of(context).textTheme.bodyLarge,
      )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
              child: TextField(
                
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: const BorderSide(color: chipMetaAiBgColor)),
                      prefixIcon: Image.asset(
                        "assets/images/meta_ai_logo.png",
                        width: 20,
                        height: 20,
                      ),
                      filled: true,
                      fillColor: chipMetaAiBgColor,
                      contentPadding: const EdgeInsets.all(8),
                      hintText: "Ask Meta AI or Search",
                      hintStyle: const TextStyle(
                          fontSize: 18, color: chipMetaAiTextColor))),
            ),
            const SizedBox(
              height: 12,
            ),
            const ChipHomeWidget(),
            const ListViewOfChats(),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: const FloatingActionButtonHome(),
    );
  }
}
