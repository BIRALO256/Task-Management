import 'package:flutter/material.dart';
import 'package:taskmanagement/utils/app_color.dart';
import 'package:taskmanagement/wigdets/button_button.dart';

import '../wigdets/task_wigdet.dart';

class ALLTasks extends StatelessWidget {
  const ALLTasks({super.key});

  @override
  Widget build(BuildContext context) {
    List myData = ["try harder", "try smarter", "  Biralo"];

    final leftEditIcon = Container(
      margin: const EdgeInsets.only(bottom: 10),
      color: const Color(0xFF2e3253).withOpacity(0.5),
      child: const Icon(
        Icons.edit,
        color: Colors.white,
      ),
      alignment: Alignment.centerLeft,
    );
    final rightdeleteIcon = Container(
      margin: const EdgeInsets.only(bottom: 10),
      color: Colors.redAccent,
      child: const Icon(
        Icons.delete,
        color: Colors.white,
      ),
      alignment: Alignment.centerRight,
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 17, left: 20),
            alignment: Alignment.topLeft,
            child: Icon(
              Icons.arrow_back,
              color: AppColors.secondaryColor,
            ),
            height: MediaQuery.of(context).size.height / 3.2,
            width: double.maxFinite,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/header1.jpg"))),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Icon(
                  Icons.home,
                  color: AppColors.secondaryColor,
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.5),
                      color: Colors.black),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
                Expanded(child: Container()),
                Icon(
                  Icons.calendar_month_sharp,
                  color: AppColors.secondaryColor,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "2",
                  style: TextStyle(
                      color: AppColors.secondaryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Flexible(
            child: ListView.builder(
                itemCount: myData.length,
                itemBuilder: (context, index) {
                  return Dismissible(
                    background: leftEditIcon,
                    secondaryBackground: rightdeleteIcon,
                    onDismissed: (DismissDirection direction) {
                      // print("deleted");
                    },
                    confirmDismiss: (DismissDirection direction) async {
                      if (direction == DismissDirection.startToEnd) {
                        showModalBottomSheet(
                            backgroundColor: Colors.transparent,
                            barrierColor: Colors.transparent,
                            context: context,
                            builder: (_) {
                              return Container(
                                decoration: BoxDecoration(
                                    color: AppColors.secondaryColor
                                        .withOpacity(0.4),
                                    borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20))),
                                height:
                                    MediaQuery.of(context).size.height / 1.9,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 12),
                                        child: ButtonWigdet(
                                            backgroundcolor:
                                                AppColors.mainColor,
                                            text: "  View",
                                            textcolor: Colors.white),
                                      ),
                                      ButtonWigdet(
                                          backgroundcolor: AppColors.mainColor,
                                          text: "Edit",
                                          textcolor: AppColors.secondaryColor),
                                    ],
                                  ),
                                ),
                              );
                            });
                        return false;
                      } else {
                        return Future.delayed(Duration(seconds: 1),
                            () => direction == DismissDirection.endToStart);
                      }
                    },
                    key: ObjectKey(index),
                    child: Container(
                      margin: EdgeInsets.only(bottom: 10, left: 20, right: 20),
                      child: TaskWigdet(
                          text: myData[index], color: Colors.blueGrey),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
