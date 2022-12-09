import 'package:flutter/material.dart';
import 'package:find_dropdown/find_dropdown.dart';
import 'package:webapp/Components/Navbar/NavItem.dart';
import 'package:webapp/Pages/CartPage.dart';

class NavBar extends StatefulWidget implements PreferredSizeWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(75);
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
      color: Colors.orangeAccent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(Icons.stacked_bar_chart,
                      color: Colors.black, size: 25.0)),
              Text(
                'Ophone',
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Container(
              width: MediaQuery.of(context).size.width * 0.45,
              color: Colors.amberAccent,
              padding: EdgeInsets.all(3.0),
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const NavItem(
                        icon: Icon(Icons.headphones,
                            color: Colors.black, size: 25.0),
                      ),
                      Text('Accessories')
                    ],
                  ),
                  Row(
                    children: [
                      NavItem(
                        icon: Icon(Icons.phone_android,
                            color: Colors.black, size: 25.0),
                      ),
                      Text('Phones')
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const CartPage()),
                            );
                          },
                          icon: const Icon(Icons.shopping_cart,
                              color: Colors.black, size: 25.0)),
                      Text('Cart')
                    ],
                  ),
                  Container(
                    height: 35,
                    width: MediaQuery.of(context).size.width * 0.25,
                    margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [
                        BoxShadow(
                          // blurRadius: 4,
                          color: Colors.greenAccent.withOpacity(0.3),
                          // offset: const Offset(0, 5),
                        )
                      ],
                      // color: Colors.black45,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          suffixIcon: Icon(Icons.search),
                          // border: OutlineInputBorder(
                          //   borderRadius: BorderRadius.circular(4.0),
                          // ),
                          fillColor: Colors.white70,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          filled: true,
                          contentPadding: EdgeInsets.only(
                              bottom: 10.0, left: 10.0, right: 10.0),
                          labelText: 'Search '),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
