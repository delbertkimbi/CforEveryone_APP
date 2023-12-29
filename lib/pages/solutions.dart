import 'package:flutter/material.dart';

import '../const/appcolors.dart';

class SolutionsPage extends StatefulWidget {
  const SolutionsPage({super.key});

  @override
  State<SolutionsPage> createState() => _SolutionsPageState();
}

class _SolutionsPageState extends State<SolutionsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Text(
            "Solutions Page",
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