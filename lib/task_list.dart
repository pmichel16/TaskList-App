import 'package:flutter/material.dart';

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
    return SingleChildScrollView(
      child: ExpansionPanelList(
        children: [
          ExpansionPanel(
            canTapOnHeader: true,
            headerBuilder: (context, isopen) {
              return const TaskHeader(title: "Healthier");
            },
            body: SizedBox(
                height: 400,
                child: ListView(
                  children: const [Text("Item 1)"), Text("Item 2"), Text("Item 3")],
                )),
            isExpanded: _isOpen.elementAt(0),
          ),
          ExpansionPanel(
            canTapOnHeader: true,
            headerBuilder: (context, isopen) {
              return const TaskHeader(title: "Smarter");
            },
            body: const Text("Now open!"),
            isExpanded: _isOpen.elementAt(1),
          ),
          ExpansionPanel(
            canTapOnHeader: true,
            headerBuilder: (context, isopen) {
              return const TaskHeader(title: "Happier");
            },
            body: const Text("Now open!"),
            isExpanded: _isOpen.elementAt(2),
          )
        ],
        expansionCallback: (i, isOpen) => setState(() {
          _isOpen[i] = !isOpen;
        }),
      ),
    );
  }
}

class TaskHeader extends StatelessWidget {
  final String title;

  const TaskHeader({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      title,
      style: const TextStyle(
        fontSize: 18,
      ),
    ));
  }
}
