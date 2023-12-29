import 'package:c_foreverybody/components/major/custom/appbar.dart';
import '../components/major/custom/drawer.dart';
import 'package:c_foreverybody/const/appcolors.dart';
import 'package:flutter/material.dart';

class PeoplesPage extends StatefulWidget {
  const PeoplesPage({super.key});

  @override
  State<PeoplesPage> createState() => _PeoplesPageState();
}

class _PeoplesPageState extends State<PeoplesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      drawer: const CustomDrawer(
        userName: "Delbert Kimbi",
        userEmail: "delber@gmail.com",
      ),
      body: Center(
        child: Container(
          color: Colors.white,
          child: Text(
            "Chats Page",
            style: TextStyle(
              fontSize: 30,
              color: AppColors().headertext,
            ),
          ),
        ),
      ),
    );
  }
}
