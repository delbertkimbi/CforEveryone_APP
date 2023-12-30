import 'package:c_foreverybody/const/appcolors.dart';
import 'package:c_foreverybody/const/appimages.dart';
import 'package:c_foreverybody/const/apptext.dart';
import 'package:flutter/material.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(8, 40, 8, 8),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 35,
          ),
          Text(
            AppText().title,
            style: TextStyle(
              color: AppColors().headertext,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Text(
              AppText().home1,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w300,
                fontSize: 20,
              ),
            ),
          ),
          AppImages().trans1,
        ],
      ),
    );
  }
}
