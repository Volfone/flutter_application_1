import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/calendar.dart';
import 'package:flutter_application_1/list.dart';

class HomePage extends StatefulWidget{
  @override
  StateHomePage  createState() => StateHomePage();
}
class StateHomePage extends State<HomePage>{
    int index = 0;
    final list = [
      const ListPage(),
      const CalendarPage()
    ];
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
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){
            Navigator.popAndPushNamed(context, '/');
            }, 
            icon: const Icon(Icons.exit_to_app)
          ),
        ]
      ),
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
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: "Календарь")
        ],
        onTap: (value){
          setState((){
              index = value;
              if(index == 0) {
                title = 'Список дел';
              } else {
                title = 'Календарь';
              }
          });
        }),
        ),
      )
    );
  }
}