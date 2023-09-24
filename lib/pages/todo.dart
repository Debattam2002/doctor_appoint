import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:doctor/colors.dart';

// ignore: must_be_immutable
class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;

  Function(BuildContext)? deleteFunction;

  ToDoTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
    required this.deleteFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 18.0, right: 18.0, top: 18.0),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(
              onPressed: deleteFunction,
              icon: Icons.delete,
              backgroundColor: primary,
              borderRadius: BorderRadius.circular(12),
            )
          ],
        ),
        child: Container(
          padding: EdgeInsets.all(25.0),
          child: Row(
            children: [
              //checkbox
              Checkbox(value: taskCompleted, onChanged: onChanged),
              //task name
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  taskName,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    decoration: taskCompleted
                        ? TextDecoration.lineThrough
                        : TextDecoration.none,
                    decorationColor: Colors.black,
                    decorationStyle: TextDecorationStyle.solid,
                  ),
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xffE56AB3),
                  Color(0xffEF87BE),
                  Color(0xffF9A3CB),
                ],
              ),
              borderRadius: BorderRadius.circular(12)),
        ),
      ),
    );
  }
}
