import 'package:flutter/material.dart';

import '../utils/app_color.dart';

class TextfieldWigdet extends StatelessWidget {
  final TextEditingController controller;
  final String hintTtext;
  final double borderRadius;
  TextfieldWigdet(
      {super.key,
      required this.controller,
      required this.hintTtext,
      required this.borderRadius});

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: 1,
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.textHolder,
        hintText: hintTtext,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: const BorderSide(color: Colors.white, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: const BorderSide(color: Colors.white, width: 1),
        ),
      ),
    );
  }
}
