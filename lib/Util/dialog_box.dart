import 'package:flutter/material.dart';

import 'package:to_do_app/Util/my_button.dart';


// ignore: must_be_immutable
class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

   DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // get user input
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add a new task",
              ),
            ),

            // buttons -> save + cancel
            Row(
              children: [
                // save button
                MyButton(text: "Save", onPressed: onSave, backgroundColor: Colors.yellow,),

                const SizedBox(width: 8),

                // cancel button
                MyButton(text: "Cancle", onPressed: onCancel, backgroundColor: Colors.yellow,),
              ],
            )
          ],
        ),
      ),
    );
  }
}
