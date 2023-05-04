import 'package:flutter/material.dart';

class Integration_Page extends StatefulWidget {
  const Integration_Page({Key? key}) : super(key: key);

  @override
  State<Integration_Page> createState() => _Integration_PageState();
}

class _Integration_PageState extends State<Integration_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios,color: Colors.black54,)),
          backgroundColor: Colors.white30,
          elevation: 0,
          centerTitle: true,
          title: const Text('Integrations',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.black)),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: ListView(
            children: [
              CustomBuild('Evernote',
                  'Connect Feedly to your Evernote account and easily save the most useful'
                  ' articles you discover in Feedly in your Evernote notebooks.',
                  'CONNECT TO EVERNOTE',Icons.add_chart_rounded),
              CustomBuild('Instapaper',
                  'Connect Feedly to your Instapaper account and easily save the most useful'
                      ' articles you discover.',
                  'CONNECT TO INSTAPAPER',Icons.interests_sharp),
              CustomBuild('Pocket',
                  'Connect Feedly to your Pocket account and easily save the most useful'
                      ' articles you discover.',
                  'CONNECT TO POCKET',Icons.check_circle_outline_outlined),
              CustomBuild('Reddit',
                  'Connect to Reddit to follow searches, subreddits, and your personal Reddit feed.',
                  'CONNECT TO REDDIT',Icons.reddit_outlined)
            ],
          ),
        ));
  }

  Padding CustomBuild(String title,String paragraph, String btitle,var icon) {
    return Padding(
              padding: EdgeInsets.only(top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),),
                  SizedBox(height: 15),
                  Text(paragraph),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(primary: Colors.green),
                      onPressed: (){}, icon:
                      Icon(icon,color: Colors.white,),
                      label:Text(btitle,style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w700),))
                ],
              ),
            );
  }
}
