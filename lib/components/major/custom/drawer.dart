import 'package:c_foreverybody/components/minor/listtile.dart';
import 'package:c_foreverybody/const/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

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
              radius: 10,
              child: ClipOval(
                child: Image.asset(
                  "assets/delbert.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
              child: ListView(
            children: [
              CustomListTile(
                  title: "Home",
                  icon: Icon(
                    LineIcons.home,
                    color: AppColors().headertext,
                    size: 30,
                  )),
              CustomListTile(
                  title: "Post a bug",
                  icon: Icon(
                    LineIcons.bug,
                    color: AppColors().headertext,
                    size: 30,
                  )),
              CustomListTile(
                  title: "Solve bugs",
                  icon: Icon(
                    LineIcons.accessibleIcon,
                    color: AppColors().headertext,
                    size: 30,
                  )),
              const Divider(
                height: 20,
              ),
              CustomListTile(
                title: "Chat AI",
                icon: Icon(
                  LineIcons.robot,
                  color: AppColors().headertext,
                  size: 30,
                ),
              ),
              CustomListTile(
                title: "Learn C programming",
                icon: Icon(
                  LineIcons.calculator,
                  color: AppColors().headertext,
                  size: 30,
                ),
              ),
              const Divider(
                height: 20,
              ),
              CustomListTile(
                title: "Settings",
                icon: Icon(
                  LineIcons.broom,
                  color: AppColors().headertext,
                  size: 30,
                ),
              ),
              CustomListTile(
                title: "LogOut",
                icon: Icon(
                  LineIcons.lock,
                  color: AppColors().headertext,
                  size: 30,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Change MOde",
                    style: TextStyle(
                      color: AppColors().headertext,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.toggle_off,
                        color: AppColors().maincolor,
                        size: 50,
                      ))
                ],
              )
            ],
          )),
        ],
      ),
    );
  }
}
