import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Copyright ©2022, All Rights Reserved.',
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 16.0,
                  color: Color.fromARGB(255, 231, 238, 248)),
            ),
            Text(
              'Powered by DTG-Labs',
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 16.0,
                  color: Color.fromARGB(255, 229, 239, 254)),
            ),
            SizedBox(height: 10.0)
          ],
        ));
  }
}
