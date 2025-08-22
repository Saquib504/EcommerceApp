import 'package:ecommerceapp/components/my_list_tile.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              //drawer header: logo
              DrawerHeader(
                child: Icon(
                  Icons.shopping_bag,
                  size: 72,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),

              const SizedBox(height: 25),

              //shop tile
              MyListTile(
                onTap: () => Navigator.of(context).pop(),
                text: "Shop",
                icon: Icons.home,
              ),

              //cart tile
              MyListTile(
                onTap: () {
                  //pop the drawer first
                  Navigator.of(context).pop();
                  //go to cart page
                  Navigator.pushNamed(context, '/cart_page');
                },
                text: "Cart",
                icon: Icons.shopping_cart,
              ),

              //profile tile
              MyListTile(
                onTap: () {
                  //pop the drawer first
                  Navigator.of(context).pop();
                  //go to cart page
                  Navigator.pushNamed(context, '/profile_page');
                },
                text: "Profile",
                icon: Icons.person,
              ),
            ],
          ),

          //exit shop tile to intropage
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: MyListTile(
              onTap: () => Navigator.pushNamed(context, '/intro_page'),
              text: "Exit",
              icon: Icons.logout,
            ),
          ),
        ],
      ),
    );
  }
}
