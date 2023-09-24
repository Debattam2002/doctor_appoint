import 'package:flutter/material.dart';
import 'package:doctor/colors.dart';
import 'package:doctor/pages/my_button.dart';

// ignore: must_be_immutable
class dialogeBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback oncancel;

  dialogeBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.oncancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color(0xffffe6f5),
      content: Container(
        height: 130,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(width: 2, color: primary), //<-- SEE HERE
                ),
                hintText: "Add a new Task",
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //save button
                Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: MyButton(text: "Save", onPressed: onSave),
                ),

                //cancel button
                MyButton(text: "Cancel", onPressed: oncancel),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
