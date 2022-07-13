// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_redux/flutter_redux.dart';
// import '../model/class_mate.dart';
// import '../model/teammate_model.dart';
// import '../redux/appstate.dart';
//
//
// class TeamPage extends StatelessWidget {
//   const TeamPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: StoreConnector<AppState, List<Mate>>(
//         converter: (store) => store.state.teamMates,
//     builder: (context, List<Mate> dynamicMates) =>
//         SizedBox(
//           height: MediaQuery.of(context).size.height * 0.9,
//           child: ListView.builder(
//             shrinkWrap: true,
//             itemBuilder: (context, index) => ListTile(
//               title: TeamMateModel(teamMate:
//               dynamicMates.where((e) => e.isSelected).toList()[index],
//               )
//           ),
//             itemCount: dynamicMates.where((e) => e.isSelected).length,
//           ),
//         ),
//       )
//     );
//   }
// }


// child: Column(
//   children: [
//     ...dynamicMates.map((teamMate) => TeamMateModel(
//         teamMate: teamMate,
//         onTap: () {
//           teamMate.isSelected = !teamMate.isSelected;
//           StoreProvider.of<AppState>(context).dispatch(UpdateAction(teamMate),);
//         }
//     )).toList()
//   ],
// ),