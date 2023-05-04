import 'package:film_studio/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      theme: ThemeData(
        brightness: Brightness.light
      ),
      themeMode: ThemeMode.light,
      home: Home_Page(),
    );
  }
}

// class Main_Page extends StatefulWidget {
//   const Main_Page({Key? key}) : super(key: key);
//
//   @override
//   State<Main_Page> createState() => _Main_PageState();
// }
//
// class _Main_PageState extends State<Main_Page> {
//
//   List page = [
//     Home_Page(),
//     Today_Page(),
//     Add_Content(),
//     Power_Search(),
//   ];
//   int currentindex = 0;
//   void onTap(int index){
//     setState(() {
//       currentindex = index;
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: page[currentindex],
//         bottomNavigationBar: BottomNavigationBar(
//             showSelectedLabels: false,
//             showUnselectedLabels: false,
//             selectedItemColor: Colors.green,
//             unselectedItemColor:Colors.grey,
//             onTap: onTap,
//             items: [
//               BottomNavigationBarItem(label: 'drawer',
//                   icon: IconButton(onPressed: (){Scaffold.of(context).openDrawer();},
//                   icon: Icon(Icons.notes_sharp))),
//               BottomNavigationBarItem(
//                   label: 'Home',icon:Icon(Icons.bookmark_border_rounded)),
//                   // icon: IconButton(onPressed: (){
//                 // Navigator.push(context, MaterialPageRoute(builder: (context)=>Home_Page()));
//               // }, icon: Icon(Icons.bookmark_border_rounded))),
//               BottomNavigationBarItem(label: 'Today',
//                   // icon: IconButton(onPressed: (){
//                 // Navigator.push(context, MaterialPageRoute(builder: (context)=>Today_Page()));},
//                   icon: Icon(Icons.notifications_outlined)),
//               BottomNavigationBarItem(label: 'Add Content',
//               // icon: IconButton(onPressed: (){
//                 // Navigator.push(context, MaterialPageRoute(builder: (context)=>Add_Content()));},
//     icon: Icon(Icons.add)),
//               BottomNavigationBarItem(label: 'Power Search',
//     // icon: IconButton(onPressed: (){
//                 // Navigator.push(context, MaterialPageRoute(builder: (context)=>Power_Search()));},
//     icon: Icon(Icons.search_outlined)),
//             ])
//     );
//   }
// }

