import 'package:flutter/material.dart';
import 'package:webapp/Components/Cart/Cart.dart';
import 'package:webapp/Components/DrawerHome.dart';
import 'package:webapp/Components/Footer.dart';
import 'package:webapp/Components/Navbar/NavBar.dart';

class BillingDetailsWidget extends StatefulWidget {
  const BillingDetailsWidget({super.key});

  @override
  State<BillingDetailsWidget> createState() => _BillingDetailsWidgetState();
}

class _BillingDetailsWidgetState extends State<BillingDetailsWidget> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController provinceController = TextEditingController();
  final TextEditingController zipController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          elevation: 10.0,
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width * 0.45,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text('Customer Information',
                      style: TextStyle(
                          fontSize: 25.0, fontWeight: FontWeight.w300)),
                  _buildTextFieldWidget(emailController, context, 'Email'),
                  _buildTextFieldWidget(nameController, context, 'Full Name'),
                  const Text('Delivery Information',
                      style: TextStyle(
                          fontSize: 25.0, fontWeight: FontWeight.w300)),
                  _buildTextFieldWidget(addressController, context, 'Address'),
                  _buildTextFieldWidget(cityController, context, 'City'),
                  _buildTextFieldWidget(
                      provinceController, context, 'Province'),
                  _buildTextFieldWidget(zipController, context, 'Zip Code'),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Padding _buildTextFieldWidget(
      TextEditingController controller, BuildContext context, String name) {
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            SizedBox(
                width: 100,
                child: Text(name,
                    style: const TextStyle(
                        fontSize: 17, fontWeight: FontWeight.w100))),
            Expanded(
              child: TextFormField(
                  controller: controller,
                  decoration: const InputDecoration(
                      isDense: true,
                      contentPadding: const EdgeInsets.only(left: 10),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)))),
            )
          ],
        ));
  }
}
