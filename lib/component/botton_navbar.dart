import 'package:film_studio/pages/add_content.dart';
import 'package:film_studio/pages/home_page.dart';
import 'package:film_studio/pages/power_search.dart';
import 'package:film_studio/pages/today_page.dart';
import 'package:flutter/material.dart';

class Bottom_Nav_Bar extends StatefulWidget {
  const Bottom_Nav_Bar({super.key});

  @override
  State<Bottom_Nav_Bar> createState() => _Bottom_Nav_BarState();
}

class _Bottom_Nav_BarState extends State<Bottom_Nav_Bar> {
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: (){
          Scaffold.of(context).openDrawer();
        },
         icon: const Icon(Icons.notes_sharp),
         color: Colors.black45,
         ),
        IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Home_Page()));
        },
         icon:Icon(Icons.bookmark_border_rounded,color: Colors.black54,)
          ,),

        IconButton(
          onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const Today_Page()));
        },
         icon:Icon(Icons.sticky_note_2_outlined),
          color: Colors.black45,),
        IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Add_Content()));
        },
         icon: const Icon(Icons.add),
          color: Colors.black45,),
        IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Power_Search()));
        },
         icon: const Icon(Icons.search),
          color: Colors.black45,),
      ],
    );
  }
}



// return BottomNavigationBar(
//   showSelectedLabels: false,
//     showUnselectedLabels: false,
//     selectedItemColor: Colors.green,
//     unselectedItemColor:Colors.grey,
//     items: [
//   BottomNavigationBarItem(label: 'drawer',icon: IconButton(onPressed: (){Scaffold.of(context).openDrawer();}, icon: Icon(Icons.notes_sharp))),
//   BottomNavigationBarItem(label: 'Home',icon: IconButton(onPressed: (){
//     Navigator.push(context, MaterialPageRoute(builder: (context)=>Home_Page()));
//   }, icon: Icon(Icons.bookmark_border_rounded))),
//   BottomNavigationBarItem(label: 'Today',icon: IconButton(onPressed: (){
//     Navigator.push(context, MaterialPageRoute(builder: (context)=>Today_Page()));}, icon: Icon(Icons.notifications_outlined))),
//   BottomNavigationBarItem(label: 'Add Content',icon: IconButton(onPressed: (){
//     Navigator.push(context, MaterialPageRoute(builder: (context)=>Add_Content()));}, icon: Icon(Icons.add))),
//   BottomNavigationBarItem(label: 'Power Search',icon: IconButton(onPressed: (){
//     Navigator.push(context, MaterialPageRoute(builder: (context)=>Power_Search()));}, icon: Icon(Icons.search_outlined))),
// ]);
