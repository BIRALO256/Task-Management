import 'package:flutter/material.dart';
import 'package:taskmanagement/utils/app_color.dart';

import '../wigdets/button_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          width: double.maxFinite,
          height: double
              .maxFinite, //this maxfinite makes sure the container covers the all the possible width available
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage("assets/welcome.jpg"))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                    text: "Hello",
                    style: TextStyle(
                        fontSize: 50,
                        color: AppColors.mainColor,
                        fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                          text: "\n start your beautiful day",
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.smallTextColor,
                          ))
                    ]),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 2.7),
              ButtonWigdet(
                  backgroundcolor: AppColors.mainColor,
                  text: "Add Task",
                  textcolor: Colors.white),
              const SizedBox(height: 20),
              ButtonWigdet(
                  backgroundcolor: AppColors.textGrey,
                  text: "View All",
                  textcolor: AppColors.smallTextColor)
            ],
          ),
        ),
      ),
    );
  }
}
