import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Theme.of(context).backgroundColor,
        child: Column(children: [
          Container(
              height: 300,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)), color: Theme.of(context).primaryColor),
              child: const SizedBox(
                width: double.infinity,
                child: Text(
                  "January\nWhatever\n12 Goals",
                  textAlign: TextAlign.center,
                ),
              )),
        ]));
  }
}
