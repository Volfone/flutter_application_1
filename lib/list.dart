import 'package:flutter/material.dart';
// 
// class ListPage extends StatelessWidget {
//   const ListPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: dealList.map((e) {
//         return Card(
//           shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(15), side: const BorderSide(color: Colors.black)),
//           child: ListTile(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
//           tileColor: Colors.blueGrey[100],
//           leading: Text(e.id.toString()),
//           title: Text(e.title!),
//           subtitle: Text(e.discription!),
//           trailing:const Icon(
//             Icons.arrow_right,
//             color: Colors.black,
//           ),
//           onTap: (){},
//           ),
//         );
//       }).toList(),
//     );
//   }
// }
// class Cards extends StatelessWidget {

//   String? text;
//   Cards({super.key, 
//     required this.text,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 400,
//       height: 40,
//       decoration: const BoxDecoration(color: Colors.green),
//       child: Text(text!),
//     );
//   }
// }
class Cards {
  String? title;
  Cards({this.title});
}
List<Cards> cardsList = [
  Cards(
    title: 'С',
  ),
  Cards(
    title: 'y',
  ),
  Cards(
    title: 'asd',
  ),
];

class Deal {
  int? id;
  String? title;
  String? discription;
  Deal({this.id, this.title, this.discription});
}
List<Deal> dealList = [
  Deal(
    id: 1,
    title: 'Сходить в магазин',
    discription: 'Купить молоко, сыр'
  ),
  Deal(
    id: 2,
    title: 'Сходить',
    discription: 'Купить'
  ),
  Deal(
    id: 3,
    title: 'в',
    discription: 'молоко'
  ),
  Deal(
    id: 4,
    title: 'магазин',
    discription: 'сыр'
  ),
];