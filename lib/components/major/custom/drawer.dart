import 'package:c_foreverybody/const/appcolors.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  final String userName;
  final String userEmail;
  final List<Widget> tiles;

  const CustomDrawer({
    super.key,
    required this.userName,
    required this.userEmail,
    required this.tiles,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: AppColors().maincolor,
            ),
            accountName: Text(userName),
            accountEmail: Text(userEmail),
            currentAccountPicture: CircleAvatar(
              child: Text(userName[0]),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: tiles.length,
              itemBuilder: (BuildContext context, int index) {
                return tiles[index];
              },
            ),
          ),
        ],
      ),
    );
  }
}
