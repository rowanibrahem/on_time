import 'package:flutter/material.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
//onPressed: (){
//             showModalBottomSheet(
//               constraints: BoxConstraints.expand(
//                   width: double.infinity ,
//                   height: MediaQuery.of(context).size.height * .3
//               ),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
//               ),
//               isScrollControlled: true,
//               context: context,
//               builder: (BuildContext context){
//                 return Container(
//                   height: MediaQuery.of(context).size.height * .2,
//                     child: buttomSheetStyle(),
//                 );
//               },
//             );
//           },