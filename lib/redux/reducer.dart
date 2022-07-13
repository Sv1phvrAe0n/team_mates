import 'package:my_team/redux/actions.dart';

import '../model/class_mate.dart';
import 'appstate.dart';

AppState updateReducer(AppState state, dynamic action) {

  if(action is ActionAdd) {
    print('ActionAdd');

    bool isMateAdded(List<Mate> teammates, Mate incomingMate) {
      return teammates.contains(incomingMate) ? true : false;
    }

    if(isMateAdded(state.teamMates, action.addedMate))  {
      null;
    } else {
      state.teamMates.add(action.addedMate);}

    return AppState(
      teamMates: state.teamMates
    );
  }

  if(action is ActionRemove) {

    state.teamMates.map((e) => e.isSelected == action.removedMate.isSelected ? action.removedMate.isSelected = false : null).toList();

    print('ActionRemove');
    return AppState(
        teamMates: state.teamMates.where((mate) => mate.name != action.removedMate.name).toList()
    );
  }

  return state;
}
