
import '../model/class_mate.dart';

// enum Actions {
//   addToList, removeFromList}

class ActionAdd{
  final Mate addedMate;

  ActionAdd(this.addedMate);
}

class ActionRemove{
  final Mate removedMate;
  ActionRemove(this.removedMate);
}

class ActionAsyncTimePassed{
  final Mate stableMate;
  ActionAsyncTimePassed(this.stableMate);
}

class ActionListUpdate{
  final List<Mate> defaultList;
  final List<Mate> listUpdate;
  ActionListUpdate(this.defaultList, this.listUpdate);
}
