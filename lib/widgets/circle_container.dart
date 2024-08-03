import 'package:flutter/material.dart';
import 'package:todo_app/data/data.dart';

class CircleContainer extends StatelessWidget {
  final Task? task;
  final Color color;
  final Widget? child;

  const CircleContainer({
    super.key,
    this.task,
    required this.color,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(9),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
          border: Border.all(
            width: 1,
            color: color,
          )),
      child: Center(child: child),
    );
  }
}
