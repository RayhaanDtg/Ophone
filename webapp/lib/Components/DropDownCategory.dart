import 'package:flutter/material.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';

class DropdownCategory extends StatefulWidget {
  DropdownCategory({super.key});

  @override
  State<DropdownCategory> createState() => __DropdownCategoryState();
}

class __DropdownCategoryState extends State<DropdownCategory> {
  late SingleValueDropDownController _cnt;
  final List<DropDownValueModel> _currencies = const [
    DropDownValueModel(name: "Food", value: "Food"),
    DropDownValueModel(name: "Transport", value: "Transport"),
    DropDownValueModel(name: "Electronics", value: "Food"),
    DropDownValueModel(name: "Clothing", value: "Clothing"),
    DropDownValueModel(name: "Books", value: "Books"),
  ];
  String _currentSelectedValue = '';

  @override
  void initState() {
    super.initState();
    _cnt = SingleValueDropDownController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.65,
        height: 35,
        margin: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
                //blurRadius: 2,
                // color: Colors.greenAccent.withOpacity(0.3),
                // offset: const Offset(0, 3),
                )
          ],
        ),
        child: DropDownTextField(
          textFieldDecoration: InputDecoration(
              // suffixIcon: Icon(Icons.search),
              // border: OutlineInputBorder(
              //   borderRadius: BorderRadius.circular(4.0),
              // ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              fillColor: Colors.white,
              filled: true,
              // clearOption:true;
              contentPadding:
                  EdgeInsets.only(bottom: 10.0, left: 10.0, right: 10.0),
              labelText: 'Product Category'),
          clearOption: true,
          dropDownList: _currencies,
          onChanged: (val) {},
        ));
  }
}
