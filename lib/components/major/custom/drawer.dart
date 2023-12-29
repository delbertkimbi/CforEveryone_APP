import 'package:c_foreverybody/components/minor/listtile.dart';
import 'package:c_foreverybody/const/appcolors.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  final String userName;
  final String userEmail;


  const CustomDrawer({
    super.key,
    required this.userName,
    required this.userEmail,
  
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
              child: ListView(
            children: const [
              CustomListTile(title: "Home", icon: Icon(Icons.home)),
              CustomListTile(title: "Home", icon: Icon(Icons.home)),
              CustomListTile(title: "Home", icon: Icon(Icons.home)),
              Divider(
                height: 20,
              ),
              CustomListTile(title: "Home", icon: Icon(Icons.home)),
              CustomListTile(title: "Home", icon: Icon(Icons.home))
            ],
          )),
        ],
      ),
    );
  }
}
