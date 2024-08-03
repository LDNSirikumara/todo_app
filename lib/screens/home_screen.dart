import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/config/config.dart';
import 'package:todo_app/data/data.dart';
import 'package:todo_app/utils/utils.dart';
import 'package:todo_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static HomeScreen builder(BuildContext context, GoRouterState state) => const HomeScreen();
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    final deviceSize = context.deviceSize;

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: deviceSize.height * 0.3,
                width: deviceSize.width,
                color: colors.primary,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DisplayWhiteText(
                      text: 'Aug 3,2024',
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                    DisplayWhiteText(
                      text: 'My Todos',
                      fontSize: 40,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 110,
            left: 0,
            right: 0,
            child: SafeArea(
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const DisplayListOfTasks(
                      tasks: [
                        Task(
                          title: 'title',
                          note: '',
                          time: '03:00',
                          date: 'Aug, 03',
                          isCompleted: true,
                          category: TaskCategories.education,
                        ),
                        Task(
                          title: 'title 2 title 2 title 2 title 2',
                          note: '',
                          time: '03:00',
                          date: 'Aug, 03',
                          isCompleted: false,
                          category: TaskCategories.education,
                        ),
                        Task(
                          title: 'title 3 title 3 title 3 title 3 ',
                          note: 'note',
                          time: '03:00',
                          date: 'Aug, 03',
                          isCompleted: false,
                          category: TaskCategories.education,
                        ),
                        Task(
                          title: 'title 2 title 2 title 2 title 2',
                          note: 'note',
                          time: '03:00',
                          date: 'Aug, 03',
                          isCompleted: false,
                          category: TaskCategories.education,
                        ),
                        Task(
                          title: 'title 3 title 3 title 3 title 3 ',
                          note: 'note',
                          time: '03:00',
                          date: 'Aug, 03',
                          isCompleted: false,
                          category: TaskCategories.education,
                        ),
                      ],
                    ),
                    const Gap(20),
                    Text(
                      'Completed',
                      style: context.textTheme.headlineMedium,
                    ),
                    const Gap(20),
                    const DisplayListOfTasks(
                      isCompletedTasks: true,
                      tasks: [
                        Task(
                          title: 'title 2 title 2 title 2 title 2',
                          note: 'note',
                          time: '03:00',
                          date: 'Aug, 03',
                          isCompleted: false,
                          category: TaskCategories.education,
                        ),
                        Task(
                          title: 'title 3 title 3 title 3 title 3 ',
                          note: 'note',
                          time: '03:00',
                          date: 'Aug, 03',
                          isCompleted: false,
                          category: TaskCategories.education,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: colors.primary,
        onPressed: () => context.push(RouteLocation.createTask),
        child: const Icon(Icons.add),
      ),
    );
  }
}
