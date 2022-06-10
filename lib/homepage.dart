import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
        child: Column(
          children: [
            Container(
                height: 175,
                decoration: BoxDecoration(
                    //boxShadow: [BoxShadow(color: Theme.of(context).primaryColor, blurRadius: 2, spreadRadius: 1)],
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    color: Theme.of(context).primaryColor),
                child: Column(children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 15),
                        width: double.infinity,
                        alignment: Alignment.centerLeft,
                        child: const Icon(Icons.menu)),
                  ),
                  Expanded(
                      flex: 10,
                      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                        Text(
                          DateFormat.MMMM().format(DateTime.now()),
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.headline4,
                        ),
                        Text(
                          "\$24.90",
                          style: Theme.of(context).textTheme.subtitle1,
                        )
                      ]))
                ])),
          ],
        ));
  }
}
