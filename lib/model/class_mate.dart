import 'package:flutter/material.dart';

class Mate {
  final String name;
  bool isSelected;
  bool isAsyncTimePassed;
  final AssetImage picture;

  Mate(this.name, this.isSelected, this.picture, this.isAsyncTimePassed);
}