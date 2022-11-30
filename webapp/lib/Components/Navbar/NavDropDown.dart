import 'package:flutter/material.dart';

import 'package:dropdown_button2/dropdown_button2.dart';

class NavDropDown extends StatefulWidget {
  const NavDropDown({super.key, required this.icon});

  @override
  State<NavDropDown> createState() => _NavDropDownState();

  final Widget icon;
}

class _NavDropDownState extends State<NavDropDown> {
  List<String> categories = ['Samsung', 'Apple'];

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        customButton: widget.icon,
        items: categories
            .map((item) => DropdownMenuItem(value: 1, child: Text(item)))
            .toList(),
        onChanged: (value) {},
        itemHeight: 100,
        itemPadding: const EdgeInsets.only(left: 16, right: 16),
        dropdownWidth: 160,
        dropdownPadding: const EdgeInsets.symmetric(vertical: 3),
        dropdownDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Colors.white,
        ),
        dropdownElevation: 8,
        offset: const Offset(0, 8),
      ),
    );
  }
}
