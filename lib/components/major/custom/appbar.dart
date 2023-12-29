import 'package:c_foreverybody/const/appcolors.dart';
import 'package:c_foreverybody/const/apptext.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(
        color: Colors.white, // Change this to your desired color
      ),
      backgroundColor: AppColors().maincolor,
      elevation: 0,
      title: Text(
        AppText().title,
        style: const TextStyle(color: Colors.white),
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.all(12.0),
          child: IconButton(
            onPressed: null,
            icon: Icon(
              LineIcons.user,
              color: Colors.white,
            ),
          ),
        )
      ],
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
