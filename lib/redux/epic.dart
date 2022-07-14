

import 'package:my_team/redux/actions.dart';
import 'package:redux_epics/redux_epics.dart';

import 'appstate.dart';

Stream<dynamic> epic(
Stream<dynamic> actions, EpicStore<AppState> store
) async* {
  await for (var action in actions) {
    if(action is ActionAdd) {
       await Future.delayed(const Duration(seconds:3));
       yield ActionAsyncTimePassed(store.state.teamMates.singleWhere((element) => element.name == action.addedMate.name));

    }
    if(action is ActionRemove) {
      Future.delayed(
        const Duration(seconds: 3),
            () => print('Removed ActionAdd'),
      );
    }
}
}