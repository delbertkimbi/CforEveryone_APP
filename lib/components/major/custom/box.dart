import 'package:c_foreverybody/const/appcolors.dart';
import 'package:flutter/material.dart';

class Box extends StatefulWidget {
  const Box(
      {super.key,
      required this.maintext,
      required this.subtext,
      required this.page});
  final String maintext;
  final String subtext;
  final Widget? page;
  @override
  State<Box> createState() => _BoxState();
}

class _BoxState extends State<Box> {
  double height = 130;
  double width = 140;
  Color color = AppColors().headertext;
  void changeItem() {
    setState(() {
      height = 150;
      width = 150;
      color = AppColors().headertext;
    });
  }

  TextStyle textStyle = TextStyle(
    color: AppColors().maincolor,
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        changeItem();
        //Navigator.of(context).push(
        // MaterialPageRoute(builder: (BuildContext context) => widget.page!));
      },
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            alignment: const Alignment(0, 0),
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.all(2),
            height: height,
            width: width,
            decoration: BoxDecoration(
                color: color,
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            child: Center(
              child: Column(
                children: [
                  Text(
                    widget.maintext,
                    style: textStyle,
                  ),
                  Text(
                    widget.subtext,
                    style: textStyle,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
