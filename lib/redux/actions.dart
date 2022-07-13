
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