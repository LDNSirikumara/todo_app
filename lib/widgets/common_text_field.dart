import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:todo_app/utils/utils.dart';

class CommonTextField extends StatelessWidget {
  final String title;
  final String hintText;
  final int? maxLines;
  final Widget? suffixIcon;
  final bool readOnly;
  final TextEditingController? controller;

  const CommonTextField({
    super.key,
    required this.title,
    required this.hintText,
    this.controller,
    this.maxLines,
    this.suffixIcon,
    this.readOnly = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          title,
          style: context.textTheme.titleMedium,
        ),
        const Gap(10),
        TextField(
          controller: controller,
          readOnly: readOnly,
          decoration: InputDecoration(
            hintText: hintText,
            suffixIcon: suffixIcon,
          ),
          maxLines: maxLines,
          onChanged: (_) {},
          onTapOutside: (event) {
            FocusManager.instance.primaryFocus?.unfocus();
          },
        )
      ],
    );
  }
}
