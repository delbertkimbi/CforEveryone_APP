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
  double height = 50;
  double width = 50;
  Color color = Colors.blue;
  void changeItem() {
    setState(() {
      height = 55;
      width = 55;
      color = Colors.blue[200]!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        changeItem();
        Navigator.of(context).push(
            MaterialPageRoute(builder: (BuildContext context) => widget.page!));
      },
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
        ),
        child: Column(
          children: [
            Text(widget.maintext),
            Text(widget.subtext),
          ],
        ),
      ),
    );
  }
}
