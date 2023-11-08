import 'package:flutter/material.dart';

import '../utils/app_color.dart';

class TextfieldWigdet extends StatelessWidget {
  final TextEditingController controller;
  final String hintTtext;
  final double? borderRadius;
  final int? maxlines;
  const TextfieldWigdet(
      {super.key,
      required this.controller,
      required this.hintTtext,
      this.borderRadius = 30,
      this.maxlines = 1});

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxlines,
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.textHolder,
        hintText: hintTtext,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius!),
          borderSide: const BorderSide(color: Colors.white, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius!),
          borderSide: const BorderSide(color: Colors.white, width: 1),
        ),
      ),
    );
  }
}
