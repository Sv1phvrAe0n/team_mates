import 'package:flutter/material.dart';
import 'class_mate.dart';

class TeamMateModel extends StatelessWidget {

  final Mate teamMate;
  final Function()? onTap;


  const TeamMateModel({Key? key, required this.teamMate, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
     // mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 16, 8, 16),
            child: Column(
              children: [
                CircleAvatar(
                  radius: teamMate.isSelected ? 50 : 40,
                  backgroundColor: teamMate.isAsyncTimePassed ? Colors.orange : Colors.greenAccent,
                  child: CircleAvatar(
                    radius: 40,
                      backgroundImage: teamMate.picture),
                ),
                Text(teamMate.name)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
