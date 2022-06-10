import 'package:flutter/material.dart';

class TaskHeader extends StatefulWidget {
  const TaskHeader({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _TaskHeaderState();
}

class _TaskHeaderState extends State<TaskHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: Colors.pink, borderRadius: BorderRadius.circular(10)),
        child: Text(
          "Header",
          style: Theme.of(context).textTheme.titleMedium,
        ));
  }
}
