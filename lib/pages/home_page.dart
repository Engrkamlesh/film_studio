import 'package:film_studio/component/bottom_navigation.dart';
import 'package:film_studio/component/botton_navbar.dart';
import 'package:film_studio/component/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    drawer: Drawer_page(),
      appBar: AppBar(
        leading: Icon(Icons.radio_button_off_outlined,color: Colors.black26,),
        elevation: 0,
        // ignore: prefer_const_literals_to_create_immutables
        actions:[const Icon(Icons.check,color: Colors.black),SizedBox(width: 10),const Icon(Icons.more_horiz,color: Colors.black,),SizedBox(width: 5,)],
        centerTitle: true,title: const Text('Read Later',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.black),),backgroundColor: Colors.white,),
      body:SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // ignore: avoid_unnecessary_containers
            Center(
              child: Image.asset('images/images.png'),
            ),
            const SizedBox(height: 40),
            const Text('No Read Later stories yet',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            const SizedBox(height: 25),
            const Text('The Artical you want to read later will be here.',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w200),)
        ],),
      ),
      // ignore: prefer_const_literals_to_create_immutables
      bottomNavigationBar:Bottom_Nav_Bar(),
    );
  }
}