import 'package:flutter/material.dart';
import 'package:whatsapp_clone/pages/calls.dart';
import 'package:whatsapp_clone/pages/home_page.dart';
import 'package:whatsapp_clone/widgets/navigation_bar_container.dart';
import 'package:badges/badges.dart' as badges;

import '../colors.dart';
import '../pages/communities.dart';
import '../pages/updates.dart';

class NavigationBarWhatsApp extends StatefulWidget {
  const NavigationBarWhatsApp({super.key});

  @override
  State<NavigationBarWhatsApp> createState() => _NavigationBarWhatsAppState();
}

class _NavigationBarWhatsAppState extends State<NavigationBarWhatsApp> {
  int _navigationSelectedIndex = 0;

  void _navigationBottomBar(int index) {
    setState(() {
      _navigationSelectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const HomePage(),
    const Updates(),
    const Communities(),
    const Calls()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_navigationSelectedIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(5, 10, 5, 0),
        child: BottomNavigationBar(
            iconSize: 20,
            backgroundColor: bgColor,
            selectedItemColor: Colors.white,
            unselectedItemColor:
                Colors.white, // Color for unselected icons and labels
            selectedLabelStyle: const TextStyle(
                color: Colors.white, // Label color when selected
                fontWeight: FontWeight.bold,
                fontSize: 16),
            unselectedLabelStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontSize: 16),
            type: BottomNavigationBarType.fixed,
            currentIndex: _navigationSelectedIndex,
            onTap: _navigationBottomBar,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: _navigationSelectedIndex == 0
                    ? const NavigationBarContainer(
                        childWidget: badges.Badge(
                          badgeStyle: badges.BadgeStyle(
                              shape: badges.BadgeShape.circle,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                              badgeColor: chipSelectedTextColor),
                          badgeContent: Text(
                            '8',
                            style: TextStyle(color: Colors.black, fontSize: 10),
                          ),
                          child: Icon(
                            Icons.chat,
                            color: Colors.white,
                          ),
                        ),
                      )
                    : const badges.Badge(
                        badgeStyle: badges.BadgeStyle(
                            shape: badges.BadgeShape.circle,
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            badgeColor: chipSelectedTextColor),
                        badgeContent: Text(
                          '8',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                        child: Icon(Icons.chat_outlined)),
                label: 'Chats',
              ),
              BottomNavigationBarItem(
                  icon: _navigationSelectedIndex == 1
                      ? Container(
                          decoration: BoxDecoration(
                              color: chipSelectedBgColor,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(20)),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 6),
                          child: const Image(
                              image: AssetImage(
                                'assets/images/social-media (1).png',
                              ),
                              color: Colors.white,
                              height: 20),
                        )
                      : Image.asset(
                          "assets/images/social-media (1).png",
                          color: Colors.white,
                        ),
                  label: 'Updates'),
              BottomNavigationBarItem(
                icon: _navigationSelectedIndex == 2
                    ? const NavigationBarContainer(
                        childWidget: Icon(Icons.groups),
                      )
                    : const Icon(Icons.groups_outlined),
                label: 'Communities',
              ),
              BottomNavigationBarItem(
                  icon: _navigationSelectedIndex == 3
                      ? const NavigationBarContainer(
                          childWidget: Icon(Icons.call))
                      : const Icon(Icons.call_outlined),
                  label: 'Calls')
            ]),
      ),
    );
  }
}
