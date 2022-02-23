import 'package:flutter/material.dart';
import 'package:responsive_facebook/config/palette.dart';

class CustomTabBar extends StatelessWidget {
  final List<IconData> icons;
  final int selectedIndex;
  final Function(int) onTap;

  const CustomTabBar({
    Key? key,
    required this.icons,
    required this.selectedIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorPadding: EdgeInsets.zero,
      indicator: const BoxDecoration(
        border: Border(
          top: BorderSide(color: Palette.facebookBlue, width: 3),
        ),
      ),
      tabs: List.generate(
        icons.length,
        (index) => Tab(
          icon: Icon(
            icons[index],
            color: index == selectedIndex
                ? Palette.facebookBlue
                : Palette.darkGreyColor,
            size: 30,
          ),
        ),
      ),
      onTap: onTap,
    );
  }
}