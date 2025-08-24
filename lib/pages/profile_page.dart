import 'package:ecommerceapp/components/my_info_tile.dart';
import 'package:ecommerceapp/models/user.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  User get currentUser => User(
    name: "Tony Chopper",
    email: "tonytony@gmail.com",
    userSince: "January 2022",
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        actions: [
          IconButton(
            onPressed: () => Navigator.pushNamed(context, '/intro_page'),
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 200.0, left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  //profile picture
                  Image.asset(
                    "lib/images/tonytonychopper.png",
                    width: 250,
                    height: 250,
                  ),

                  const SizedBox(height: 30),

                  //user details
                  MyInfoTile(data: currentUser.name),

                  const SizedBox(height: 10),

                  MyInfoTile(data: currentUser.email),

                  const SizedBox(height: 10),

                  MyInfoTile(data: currentUser.userSince),
                ],
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
    );
  }
}
