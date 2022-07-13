import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:my_team/model/list_of_candidates.dart';
import 'package:my_team/redux/appstate.dart';
import 'package:my_team/redux/epic.dart';
import 'package:my_team/redux/reducer.dart';
import 'package:my_team/widgets/homepage.dart';
import 'model/class_mate.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  final Store<AppState> _store = Store<AppState>(
    updateReducer,
    middleware: [EpicMiddleware(epic)],
    initialState: AppState(teamMates: defaultList)
  );

  @override
  Widget build(BuildContext context) {
    return  StoreProvider(
      store: _store,
      child: const MaterialApp(
        home:  MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: const Text('The Dream Team'),
      ),
      body: Homepage()
    );
  }
}
