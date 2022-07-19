import 'package:my_team/redux/actions.dart';
import 'package:my_team/redux/selector.dart';

import '../model/class_mate.dart';
import 'appstate.dart';

AppState updateReducer(AppState state, dynamic action) {

  if(action is ActionAdd) {
    bool isMateAdded(List<Mate> teammates, Mate incomingMate) {
      return teammates.contains(incomingMate) ? true : false;
    }

    if(isMateAdded(state.teamMates, action.addedMate))  {
      null;
    } else {
      state.teamMates.add(action.addedMate);}

    return AppState(teamMates: state.teamMates
    );
  }

  if(action is ActionRemove) {
    state.teamMates.map((e) => e.isSelected == action.removedMate.isSelected ? action.removedMate.isSelected = false : null).toList();
    state.teamMates.map((e) => e.name == action.removedMate.name ? e.isAsyncTimePassed = false : null).toList();
    return AppState(
        teamMates: state.teamMates.where((mate) => mate.name != action.removedMate.name).toList()
    );
  }

  if(action is ActionAsyncTimePassed) {
    state.teamMates.map((e) => e.name == action.stableMate.name ? e.isAsyncTimePassed = true : false).toList();
    return AppState(
      teamMates: state.teamMates
    );
  }

  if(action is ActionListUpdate) {
    final List<Mate> listUpdates = highManaSelector(AppState(teamMates: state.teamMates)).toList();
    return AppState(teamMates: listUpdates);
  }

  return state;
}
