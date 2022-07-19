

import 'package:reselect/reselect.dart';

import 'appstate.dart';

final matesSelector = (AppState state) => state.teamMates;

final highManaSelector = createSelector1(matesSelector, (mates) => mates.where((mate) => mate.mana > 10));

