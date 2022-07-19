import 'package:flutter/material.dart';

class Mate {
  final String name;
  bool isSelected;
  bool isAsyncTimePassed;
  String usability;
  int mana;
  final AssetImage picture;

  Mate(this.name, this.isSelected, this.isAsyncTimePassed, this.usability, this.mana, this.picture);

  //factory Mate.mana(String name,int mana) => Mate(name, mana);
}