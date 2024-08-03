import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/widgets/widgets.dart';

class CreateTaskScreen extends StatelessWidget {
  static CreateTaskScreen builder(BuildContext context, GoRouterState state) => const CreateTaskScreen();

  const CreateTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Task'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const CommonTextField(
                title: 'Task Title',
                hintText: 'Task Title',
              ),
              const Gap(10),
              const SelectCategory(),
              const Gap(10),
              const SelectDateTime(),
              const Gap(10),
              const CommonTextField(
                title: 'Note',
                hintText: 'Take note',
                maxLines: 7,
              ),
              const Gap(60),
              ElevatedButton(
                  onPressed: () {},
                  child: const DisplayWhiteText(
                    fontSize: 20,
                    text: 'Save',
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
