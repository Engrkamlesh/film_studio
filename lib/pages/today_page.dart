import 'package:film_studio/component/drawer.dart';
import 'package:film_studio/pages/new_page.dart';
import 'package:flutter/material.dart';

import '../component/botton_navbar.dart';

// ignore: camel_case_types
class Today_Page extends StatefulWidget {
  const Today_Page({super.key});

  @override
  State<Today_Page> createState() => _Today_PageState();
}

class _Today_PageState extends State<Today_Page> {
  @override
  Widget build(BuildContext context) {
     return DefaultTabController(
      length: 2,
       child: Scaffold(
         drawer: Drawer_page(),
        appBar: AppBar(
          leading: const Icon(Icons.radio_button_off_outlined,color: Colors.black26,),
          elevation: 0,
          // ignore: prefer_const_literals_to_create_immutables
          actions:[const Icon(Icons.check,color: Colors.black),const SizedBox(width: 10),const Icon(Icons.more_horiz,color: Colors.black,),const SizedBox(width: 5,)],
          centerTitle: true,title: const Text('Today',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.black),),
          backgroundColor: Colors.white,
          bottom:const TabBar(
            labelStyle: TextStyle(fontWeight: FontWeight.w700),
            labelColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Colors.green,
            unselectedLabelColor: Colors.black45,
            tabs: [
                Tab(child: Text('Me')),
                Tab(child: Text('Explore'))
          ]),
          ),
        body:TabBarView(children: [
              ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                return ListTile(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>New_Page()));
                  },
                  contentPadding: EdgeInsets.all(10),
                  title: Text('The How oh charatcher is not something addda',style: TextStyle(fontWeight: FontWeight.bold),),
                  trailing: Container(
                    height: 220,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      // border: Border.all(),
                      image: DecorationImage(image: AssetImage('images/head.jpg'),fit: BoxFit.fill)
                    ),
                    // child: Image.asset('images/head.jpg',fit: BoxFit.fill,),
                  ),
                  subtitle: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [Icon(Icons.arrow_right_alt_outlined),
                      Text('Tweetbot Tweeter Party',style: TextStyle(fontSize: 12,color: Colors.greenAccent),),
                    ],),
                    Row(children: [
                      Text('100+',style: TextStyle(fontSize: 12,color: Colors.greenAccent) ,),
                      SizedBox(width: 10),
                      Text('The Verge / 10h',style: TextStyle(fontSize: 12,color: Colors.grey),),
                    ],)

                  ],),
                );
              }),
          ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  contentPadding: EdgeInsets.all(10),
                  title: Text('The Trade of forex is the is not something addda',style: TextStyle(fontWeight: FontWeight.bold),),
                  trailing: Container(
                    height: 220,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        border: Border.all()
                    ),
                    child: Image.asset('images/head.jpg',fit: BoxFit.fill,),
                  ),
                  subtitle: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [Icon(Icons.arrow_right_alt_outlined),
                          Text('Tweetbot Tweeter Party',style: TextStyle(fontSize: 12,color: Colors.greenAccent),),
                        ],),
                      Row(children: [
                        Text('100+',style: TextStyle(fontSize: 12,color: Colors.greenAccent) ,),
                        SizedBox(width: 10),
                        Text('The Verge / 10h',style: TextStyle(fontSize: 12,color: Colors.grey),),
                      ],)

                    ],),
                );
              }),
        ]),
           bottomNavigationBar:Bottom_Nav_Bar(),
        ),
     );
  }
}