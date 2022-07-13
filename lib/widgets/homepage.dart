import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:my_team/model/list_of_candidates.dart';
import 'package:my_team/model/teammate_model.dart';
import 'package:my_team/redux/actions.dart';
import '../model/class_mate.dart';
import '../redux/appstate.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
   child: Center(
     child: StoreConnector<AppState, List<Mate>>(
       converter: (store) => store.state.teamMates,
       builder: (context, List<Mate> dynamicMates) =>
       Padding(
         padding: const EdgeInsets.all(16.0),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             Expanded(
               child: ListView.builder(
                 shrinkWrap: true,
                 itemBuilder: (context, index) => ListTile(
                 title: TeamMateModel(
                   teamMate: defaultList[index],
                   onTap: () {
                     defaultList[index].isSelected = !defaultList[index].isSelected;
                     StoreProvider.of<AppState>(context).dispatch(ActionAdd(defaultList[index]));
                   },
                 )
       ),
                 itemCount: defaultList.length,
               )),
           const VerticalDivider(
             thickness: 2,
           ),
             Expanded(
               child: ListView.builder(itemBuilder: (context, index) => ListTile(
                   title: Row(
                     children: [
                       TeamMateModel(teamMate:
                         dynamicMates.where((e) => e.isSelected).toList()[index],
                         onTap: () {
                           StoreProvider.of<AppState>(context).dispatch(ActionRemove(dynamicMates.where((e) => e.isSelected).toList()[index]));
                         },
                       ),
                     ],
                   )
               ),
                 itemCount: dynamicMates.where((e) => e.isSelected).length,
               ),
             ),

           ],
         ),
       ),
     ),
   ),
    );
  }
}
