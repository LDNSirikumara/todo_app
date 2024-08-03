import 'package:flutter/material.dart';
import 'package:todo_app/data/data.dart';
import 'package:todo_app/utils/utils.dart';
import 'package:todo_app/widgets/widgets.dart';

class DisplayListOfTasks extends StatelessWidget {
  final List<Task> tasks;
  final bool isCompletedTasks;

  const DisplayListOfTasks({
    super.key,
    required this.tasks,
    this.isCompletedTasks = false,
  });

  @override
  Widget build(BuildContext context) {
    final deviceSize = context.deviceSize;
    final emptyTaskMessage = isCompletedTasks ? 'There is no completed tasks yet' : 'There is no tasks todo!';
    return CommonContainer(
      height: deviceSize.height * 0.3,
      child: tasks.isEmpty
          ? Center(
              child: Text(
                emptyTaskMessage,
                style: context.textTheme.bodyLarge,
              ),
            )
          : ListView.separated(
              shrinkWrap: true,
              itemCount: tasks.length,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                final task = tasks[index];
                return InkWell(
                  onLongPress: () {},
                  onTap: () async {
                    await showModalBottomSheet(
                        context: context,
                        builder: (ctx) {
                          return TaskDetails(task: task);
                        });
                  },
                  child: TaskTile(task: task),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const Divider(
                  thickness: 1,
                );
              },
            ),
    );
  }
}
