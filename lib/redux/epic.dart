

import 'package:my_team/redux/actions.dart';
import 'package:redux_epics/redux_epics.dart';

import 'appstate.dart';

Stream<dynamic> epic(
Stream<dynamic> actions, EpicStore<AppState> store
) async* {
  await for (var action in actions) {
    if(action is ActionAdd) {
      Future.delayed(
        const Duration(seconds: 3),
            () => print('Delayed ActionAdd'),
      );
    }
    if(action is ActionRemove) {
      Future.delayed(
        const Duration(seconds: 3),
            () => print('Removed ActionAdd'),
      );
    }
}
}