import 'package:flutter/material.dart';
import 'package:rounded_expansion_tile/rounded_expansion_tile.dart';
import 'package:todo_app/task_header.dart';

class TaskList extends StatefulWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  final textController = TextEditingController();
  final _isOpen = [true, true, true];

  // @override
  // void initState() async {
  //   super.initState();
  //   final injector = Injection().initialize(Injector());
  //   final dbHelper = injector.get<DatabaseHelper>();

  //   _id = await dbHelper.create("Initial Text");
  //   DisplayText? test = await dbHelper.getItemById(_id);
  // }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16), children: [
      Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: RoundedExpansionTile(
          leading: const Icon(Icons.circle_outlined),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          title: const Text('BorderRadius.circular(8)'),
          subtitle: const Text('In card'),
          expanded: true,
          trailing: const Icon(Icons.keyboard_arrow_up),
          rotateTrailing: true,
          children: [
            for (var i = 0; i < 5; i++)
              ListTile(
                title: Text('Child $i'),
              )
          ],
        ),
      ),
      const Divider(height: 20),
      Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: RoundedExpansionTile(
          leading: const Icon(Icons.circle_outlined),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          title: const Text('BorderRadius.circular(16)'),
          subtitle: const Text('In card'),
          expanded: true,
          trailing: const Icon(Icons.keyboard_arrow_up),
          rotateTrailing: true,
          children: [
            for (var i = 0; i < 5; i++)
              ListTile(
                title: Text('Child $i'),
              )
          ],
        ),
      ),
      const Divider(height: 20),
      Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: RoundedExpansionTile(
          leading: const Icon(Icons.circle_outlined),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          title: const Text('BorderRadius.circular(16)'),
          subtitle: const Text('In card'),
          expanded: true,
          trailing: const Icon(Icons.keyboard_arrow_up),
          rotateTrailing: true,
          children: [
            for (var i = 0; i < 5; i++)
              ListTile(
                title: Text('Child $i'),
              )
          ],
        ),
      ),
    ]));
  }
}
