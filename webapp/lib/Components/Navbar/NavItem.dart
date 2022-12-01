import 'package:flutter/material.dart';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:webapp/Pages/ProductListPage.dart';

class NavItem extends StatefulWidget {
  const NavItem({super.key, required this.icon});

  @override
  State<NavItem> createState() => _NavItemState();

  final Widget icon;
}

class _NavItemState extends State<NavItem> {
  List<String> categories = ['Samsung', 'Apple'];

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ProductListPage()),
          );
        },
        icon: widget.icon);
  }

  // @override
  // Widget build(BuildContext context) {
  //   return DropdownButtonHideUnderline(
  //     child: DropdownButton2(
  //       customButton: widget.icon,
  //       items: categories
  //           .map((item) => DropdownMenuItem(value: 1, child: Text(item)))
  //           .toList(),
  //       onChanged: (value) {},
  //       itemHeight: 100,
  //       itemPadding: const EdgeInsets.only(left: 16, right: 16),
  //       dropdownWidth: 160,
  //       dropdownPadding: const EdgeInsets.symmetric(vertical: 3),
  //       dropdownDecoration: BoxDecoration(
  //         borderRadius: BorderRadius.circular(4),
  //         color: Colors.white,
  //       ),
  //       dropdownElevation: 8,
  //       offset: const Offset(0, 8),
  //     ),
  //   );
  // }
}
