import 'package:c_foreverybody/components/major/custom/appbar.dart';
import 'package:c_foreverybody/components/major/custom/drawer.dart';
import 'package:c_foreverybody/const/appcolors.dart';
import 'package:flutter/material.dart';

class BugsPage extends StatefulWidget {
  const BugsPage({super.key});

  @override
  State<BugsPage> createState() => _BugsPageState();
}

class _BugsPageState extends State<BugsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(),
        drawer: const CustomDrawer(
          userName: "Delbert Kimbi",
          userEmail: "delbert@gmail.com",
        ),
        body: Column(
          children: [
            
             Image.asset("assets/c.jpg"),
            Container(
              color: Colors.white,
              child: Text(
                "Bugs Page",
                style: TextStyle(
                  fontSize: 30,
                  color: AppColors().headertext,
                ),
              ),
            ),
          ],
        ));
  }
}
