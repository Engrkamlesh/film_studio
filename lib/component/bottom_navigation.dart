import 'package:film_studio/pages/add_content.dart';
import 'package:film_studio/pages/home_page.dart';
import 'package:film_studio/pages/power_search.dart';
import 'package:film_studio/pages/today_page.dart';
import 'package:flutter/material.dart';

class Bottom_Navigation_Bar extends StatefulWidget {
  const Bottom_Navigation_Bar({Key? key}) : super(key: key);

  @override
  State<Bottom_Navigation_Bar> createState() => _Bottom_Navigation_BarState();
}

class _Bottom_Navigation_BarState extends State<Bottom_Navigation_Bar> {

  List page = [
    Home_Page(),
    Today_Page(),
    Add_Content(),
    Power_Search(),
  ];
int currentindex = 0;
void onTap(int index){
  setState(() {
    currentindex = index;
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[currentindex],
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.green,
          unselectedItemColor:Colors.grey,
          onTap: onTap,
          items: [
            BottomNavigationBarItem(label: 'drawer',icon: IconButton(onPressed: (){Scaffold.of(context).openDrawer();}, icon: Icon(Icons.notes_sharp))),
            BottomNavigationBarItem(label: 'Home',icon: IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Home_Page()));
            }, icon: Icon(Icons.bookmark_border_rounded))),
            BottomNavigationBarItem(label: 'Today',icon: IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Today_Page()));}, icon: Icon(Icons.notifications_outlined))),
            BottomNavigationBarItem(label: 'Add Content',icon: IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Add_Content()));}, icon: Icon(Icons.add))),
            BottomNavigationBarItem(label: 'Power Search',icon: IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Power_Search()));}, icon: Icon(Icons.search_outlined))),
          ])
    );
  }
}

