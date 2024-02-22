import 'package:c_foreverybody/const/appcolors.dart';
import 'package:c_foreverybody/const/appimages.dart';
import 'package:c_foreverybody/const/apptext.dart';
import 'package:flutter/material.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12, 70, 12, 2),
      color: Colors.grey[100],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 30,
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
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 2, 2, 0),
            child: Text(
              AppText().trans2,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w300,
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          AppImages().trens2,
        ],
      ),
    );
  }
}
