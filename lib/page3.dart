// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:flutter_application_1/calendar.dart';
// import 'list.dart';

//     List<Deal> newDealList = List.from(dealList);
// class Page3 extends StatelessWidget {
//   const Page3({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Container(
//             height: 80,
//             child: ListView(
//               scrollDirection: Axis.horizontal,
//               children: [
//                 Container(
//                   width: 80,
//                   child: Card(
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(15),
//                       side: const BorderSide(
//                         color: Colors.black,
//                       ),
//                     ),
//                     child: ListTile(
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(15),
//                       ),
//                       tileColor: Colors.blueGrey[100],
//                       title: const Text("e.title!"),
//                       trailing: const Icon(
//                         Icons.arrow_right,
//                         color: Colors.black,
//                       ),
//                       onTap: () {},
//                     )
//                   ),
//                 ),
//                 Container(
//                   height: 400,
//                   child: ListView(
//                     children: [
//                       newDealList.map((e) {
//                         return Card(
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(15),
//                             side: const BorderSide(
//                               color: Colors.black,
//                             ),
//                           ),
//                           child: ListTile(
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(15),
//                             ),
//                             tileColor: Colors.blueGrey[100],
//                             title: Text(e.title!),
//                             trailing: const Icon(
//                               Icons.arrow_right,
//                               color: Colors.black,
//                             ),
//                             onTap: () {},
//                           )
//                         );
//                       }).toList(),
//                     ]),
//                 )
//               ],
//             ),
//           )
//         ],)
//     );
//   }
// }

import 'package:flutter/cupertino.dart'; 
import 'package:flutter/material.dart'; 
import 'package:flutter/services.dart'; 
// import 'package:flutter_application_2/home.dart'; 
// import 'deal.dart'; 
import 'list.dart';
 
List<Deal> newDealList = List.from(dealList); 
 
class pr3Widget extends StatelessWidget{ 
  const pr3Widget({super.key}); 
 
  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 
      body: Column( 
        children: [ 
          Container( 
            height: 80, 
            child: ListView( 
              scrollDirection: Axis.horizontal, 
              children: [ 
              Container( 
                width: 80, 
                child: Card( 
                  shape: RoundedRectangleBorder( 
                    borderRadius: BorderRadius.circular(15), 
                    side: const BorderSide( 
                      color: Colors.black, 
                    ), 
                  ), 
                  child: ListTile( 
                    shape: RoundedRectangleBorder( 
                      borderRadius: BorderRadius.circular(15), 
                    ), 
                    tileColor: Colors.blueGrey[100], 
                    subtitle: Center(child: Text("abc"),), 
                    onTap: () {}, 
                  ), 
                ), 
              ), 
              Container( 
                width: 80, 
                child: Card( 
                  shape: RoundedRectangleBorder( 
                    borderRadius: BorderRadius.circular(15), 
                    side: const BorderSide( 
                      color: Colors.black, 
                    ), 
                  ), 
                  child: ListTile( 
                    shape: RoundedRectangleBorder( 
                      borderRadius: BorderRadius.circular(15), 
                    ), 
                    tileColor: Colors.blueGrey[100], 
                    subtitle: Center(child: Text("abc"),), 
                    onTap: () {}, 
                  ), 
                ), 
              ), 
              Container( 
                width: 80, 
                child: Card( 
                  shape: RoundedRectangleBorder( 
                    borderRadius: BorderRadius.circular(15), 
                    side: const BorderSide( 
                      color: Colors.black, 
                    ), 
                  ), 
                  child: ListTile( 
                    shape: RoundedRectangleBorder( 
                      borderRadius: BorderRadius.circular(15), 
                    ), 
                    tileColor: Colors.blueGrey[100], 
                    subtitle: Center(child: Text("abc"),), 
                    onTap: () {}, 
                  ), 
                ), 
              ), 
              Container( 
                width: 80, 
                child: Card( 
                  shape: RoundedRectangleBorder( 
                    borderRadius: BorderRadius.circular(15), 
                    side: const BorderSide( 
                      color: Colors.black, 
                    ), 
                  ), 
                  child: ListTile( 
                    shape: RoundedRectangleBorder( 
                      borderRadius: BorderRadius.circular(15), 
                    ), 
                    tileColor: Colors.blueGrey[100], 
                    subtitle: Center(child: Text("abc"),), 
                    onTap: () {}, 
                  ), 
                ), 
              ), 
              Container( 
                width: 80, 
                child: Card( 
                  shape: RoundedRectangleBorder( 
                    borderRadius: BorderRadius.circular(15), 
                    side: const BorderSide( 
                      color: Colors.black, 
                    ), 
                  ), 
                  child: ListTile( 
                    shape: RoundedRectangleBorder( 
                      borderRadius: BorderRadius.circular(15), 
                    ), 
                    tileColor: Colors.blueGrey[100], 
                    subtitle: Center(child: Text("abc"),), 
                    onTap: () {}, 
                  ), 
                ), 
              ), 
              Container( 
                width: 80, 
                child: Card( 
                  shape: RoundedRectangleBorder( 
                    borderRadius: BorderRadius.circular(15), 
                    side: const BorderSide( 
                      color: Colors.black, 
                    ), 
                  ), 
                  child: ListTile( 
                    shape: RoundedRectangleBorder( 
                      borderRadius: BorderRadius.circular(15), 
                    ), 
                    tileColor: Colors.blueGrey[100], 
                    subtitle: Center(child: Text("abc"),), 
                    onTap: () {}, 
                  ), 
                ), 
              ), 
              ]
            ), 
          ), 
          Container( 
            height: 526.6, 
            child: ListView( 
              children: newDealList.map( 
                (deal) { 
                  return Card( 
                    shape: RoundedRectangleBorder( 
                      borderRadius: BorderRadius.circular(15), 
                      side: const BorderSide( 
                        color: Colors.black, 
                      ), 
                    ), 
                    child: ListTile( 
                      shape: RoundedRectangleBorder( 
                        borderRadius: BorderRadius.circular(15), 
                      ), 
                      tileColor: Colors.blueGrey[100], 
                      leading: Text( 
                        deal.id.toString(), 
                      ), 
                      title: Text(deal.title!), 
                      subtitle: Text(deal.discription!), 
                      trailing: const Icon( 
                        Icons.arrow_right, 
                        color: Colors.black, 
                      ), 
                      onTap: () {}, 
                    ), 
                  ); 
                }, 
              ).toList(), 
            ) 
          ) 
        ],
      ) 
    ); 
  } 
}
