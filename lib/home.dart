import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/calendar.dart';
import 'package:flutter_application_1/list.dart';
import 'package:flutter_application_1/page3.dart';

class HomePage extends StatefulWidget{
  @override
  StateHomePage  createState() => StateHomePage();
}
class StateHomePage extends State<HomePage>{
    int index = 0;
    TextEditingController searchController = TextEditingController();
    int tittleAppBar = 0;
    // final list = [
    //   const listSearchWidget(),
    //   const CalendarPage()
    // ];
    List<Deal> newDealList = List.from(dealList);
    List<Cards> newCardList = List.from(cardsList);
    onItemSearch(String value){
      setState(() {
        newDealList = dealList
        .where((element) => 
         element.title!.toLowerCase().contains(value.toLowerCase()))
        .toList();
      });
    }
    String title = "Список дел";
    void onItemTap(int newIndex){
  setState(() {
    index = newIndex;
  });
}

void onTap(int newIndex)
{
  index = newIndex;
}



  @override
  Widget build(BuildContext context) {
    // Widget listHorizontalwidget(BuildContext context)
    // {
    //   return ListView(
    //     scrollDirection: Axis.horizontal,
    //     children: newCardList.map((e) {
    //       return Card(
    //         shape: RoundedRectangleBorder(
    //           borderRadius: BorderRadius.circular(15),
    //           side: const BorderSide(
    //             color: Colors.black,
    //           ),
    //         ),
    //         child: ListTile(
    //           shape: RoundedRectangleBorder(
    //             borderRadius: BorderRadius.circular(15),
    //           ),
    //           tileColor: Colors.blueGrey[100],
    //           title: Text(e.title!),
    //           trailing: const Icon(
    //             Icons.arrow_right,
    //             color: Colors.black,
    //           ),
    //           onTap: () {},
    //         )
    //       );
    //     }).toList(),
    //   );
    // }
    Widget listSearchWidget(BuildContext context) {
      return ListView(
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
      );
    }
    final list = [
      listSearchWidget(context), // 0
      const CalendarPage(), // 1
      const pr3Widget(),
    ];
  AppBar appBarSearch = AppBar(
    centerTitle: true,
    title: TextField(
      decoration: const InputDecoration(
        label: Text("Название")
      ),
      controller: searchController,
      onChanged: onItemSearch,
    ),
    actions: [
      IconButton(
        onPressed: (){
          setState(() {
            onItemSearch("");
            searchController.clear();
            tittleAppBar = 2;
          });
      }, icon: Icon(Icons.close))
    ],);
  
  AppBar appBar = AppBar(
    title: Text(title),
    centerTitle: true,
    actions: [
      IconButton(
        onPressed: (){
          setState(() {
            tittleAppBar = 1;
          });
      }, icon: Icon(Icons.search))
    ],);
  AppBar appBar2 = AppBar(
    title: Text(title),
    centerTitle: true,
    actions: [
      IconButton(
        onPressed: (){
          setState(() {
            tittleAppBar = 0;
          });
          Navigator.popAndPushNamed(context, '/');
      }, icon: Icon(Icons.exit_to_app))
    ],);
    
    List<AppBar> appBarList = 
    [
      appBar,
      appBarSearch,
      appBar2
    ];
    return Scaffold(
      drawer: const Drawer(),
      appBar: appBarList.elementAt(tittleAppBar),
      //   title: Text(title),
      //   centerTitle: true,
      //   actions: [
      //     IconButton(onPressed: (){
      //       Navigator.popAndPushNamed(context, '/');
      //       }, 
      //       icon: const Icon(Icons.exit_to_app)
      //     ),
      //   ]
      // ),
      body: list.elementAt(index),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(onPressed: (){}, child: const Icon(Icons.add),),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        child: SizedBox(height: 55, child: BottomNavigationBar(
          selectedItemColor: Colors.white,
          backgroundColor: Color.fromARGB(120, 255, 0, 0),
          currentIndex: index,
          items: [
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "Список дел"),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: "Календарь"),
          BottomNavigationBarItem(icon: Icon(Icons.list_alt), label: "Список дел 2")
        ],
        onTap: (value){
          setState((){
              index = value;
              if(index == 0) {
                title = 'Список дел';
              } else if(index == 1) {
                title = 'Календарь';
              } else 
              {
                title = 'Список дел 2';
              }
          });
        }),
        ),
      )
    );
  }
}