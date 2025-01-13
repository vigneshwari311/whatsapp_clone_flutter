import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';

class ChipHomeWidget extends StatefulWidget {
  const ChipHomeWidget({super.key});

  @override
  State<ChipHomeWidget> createState() => _ChipHomeWidgetState();
}

class _ChipHomeWidgetState extends State<ChipHomeWidget> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final List<String> chipData = [
      'All',
      'Unread',
      'Favourites',
      'Groups',
      '+'
    ];
    return Wrap(
      spacing: 8,
      children: chipData.map((chip) {
        final int index = chipData.indexOf(chip);
        return FilterChip(
            label: Text(chip),
            labelStyle: TextStyle(
                fontSize: 15,
                color: _selectedIndex == index
                    ? chipSelectedTextColor
                    : chipMetaAiTextColor),
            selected: _selectedIndex == index,
            onSelected: (bool selected) {
              setState(() {
                _selectedIndex = index;
              });
            },
            selectedColor: chipSelectedBgColor,
            backgroundColor: chipMetaAiBgColor,
            showCheckmark: false,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            side: const BorderSide(color: Colors.transparent));
      }).toList(),
    );
  }
}
