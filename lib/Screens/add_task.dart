import 'package:flutter/material.dart';
import 'package:taskmanagement/utils/app_color.dart';

import '../wigdets/button_button.dart';
import '../wigdets/textfiled_wigdet.dart';

class AddTask extends StatelessWidget {
  const AddTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage("assets/addtask1.jpg"))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                const SizedBox(
                  height: 60,
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back,
                      color: AppColors.secondaryColor,
                    )),
              ],
            ),
            Column(
              children: [
                TextfieldWigdet(
                  controller:
                      TextEditingController(), // Use the dynamic controller
                  hintTtext: "Task name",
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 90),
                TextfieldWigdet(
                  controller:
                      TextEditingController(), // Use the dynamic controller
                  hintTtext: "Task detail",
                  borderRadius: 15,
                  maxlines: 3,
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 70),
                ButtonWigdet(
                    backgroundcolor: AppColors.mainColor,
                    text: "Add",
                    textcolor: Colors.white),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 6),
          ],
        ),
      ),
    );
  }
}
