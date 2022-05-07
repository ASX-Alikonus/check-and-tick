
import 'package:fluent_ui/fluent_ui.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
   int index = 0;
  @override
  Widget build(BuildContext context) {
    return FluentApp(

        home: NavigationView(
          
          content: NavigationBody(
            
            index: index,
            children: const <Widget>[
               WelcomePage(),
               TodoListPage(),
            ],
          ),
          appBar: const NavigationAppBar(
            
            title: Text("Fluent Design App Bar")),
          pane: NavigationPane(
            
            selected: index,
            onChanged: (newIndex){
              setState(() {
                index = newIndex;
              });
            },
            displayMode: PaneDisplayMode.auto,
             items: [
               PaneItem(
                icon: const Icon(Icons.code),
                title: const Text("Sample Page 1")
              ),
              PaneItem(
                icon:const  Icon(Icons.desktop_windows_outlined),
                title: const Text("Sample Page 2")
              )
            ]
          ),
      )
);
  }
}

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return const ScaffoldPage(
      header:Text("1"),

    );
  }
}

class TodoListPage extends StatefulWidget {
  const TodoListPage({Key? key}) : super(key: key);

  @override
  State<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  @override
  Widget build(BuildContext context) {
    return const ScaffoldPage(
      header: Text(
        "Sample Page 1",
        style: TextStyle(fontSize: 60),
      ),
    );
  }
}