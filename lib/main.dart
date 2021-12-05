import 'package:flutter/material.dart';

import 'package:flutter_final_course_test/epics/app_epics.dart';
import 'package:flutter_final_course_test/models/app_state.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';

import 'data/memes_api.dart';
import 'presentation/home_page.dart';
import 'reducer/reducer.dart';

void main() {
  final MemesApi memesApi = MemesApi();
  final AppEpics epics = AppEpics(memesApi);

  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: AppState(),
    middleware: <Middleware<AppState>>[
      (Store<AppState> store, dynamic action, NextDispatcher next) {
        next(action);
      },
      EpicMiddleware<AppState>(epics.epics),
    ],
  );
  runApp(MyApp(store: store));
}

class MyApp extends StatelessWidget {
  final Store<AppState> store;

  const MyApp({Key? key, required this.store}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: const MaterialApp(
        home: MyHomePage(),
      ),
    );
  }
}
