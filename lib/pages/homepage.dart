import 'package:c_foreverybody/components/major/custom/appbar.dart';
import 'package:c_foreverybody/components/major/custom/drawer.dart';
import 'package:c_foreverybody/const/appcolors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            "Home Page",
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
