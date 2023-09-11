import 'package:flutter/material.dart';

class ButtonWigdet extends StatelessWidget {
  final Color backgroundcolor;
  final String text;
  final Color textcolor;
  const ButtonWigdet(
      {super.key,
      required this.backgroundcolor,
      required this.text,
      required this.textcolor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: MediaQuery.of(context).size.height / 14,
      decoration: BoxDecoration(
          color: backgroundcolor, borderRadius: BorderRadius.circular(40)),
      child: Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 20, color: textcolor),
        ),
      ),
    );
  }
}
