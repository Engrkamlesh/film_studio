import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Drawer_page extends StatefulWidget {
  const Drawer_page({super.key});

  @override
  State<Drawer_page> createState() => _Drawer_pageState();
}

class _Drawer_pageState extends State<Drawer_page> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Wrap(
          spacing: 20,
          runSpacing: -12,
          children: [
            const SizedBox(height: 50),
            custom_list_tile('Today',(){},Icon(Icons.sticky_note_2_outlined)),
            custom_list_tile('Read Later',(){},Icon(Icons.bookmark_outline)),
            custom_list_tile('Upgrade',(){},Icon(Icons.update_outlined)),
            const SizedBox(
              height: 50
            ),
         const Padding(
           padding: EdgeInsets.only(top: 40,bottom: 10),
           child: Text(
                'Feeds',
                style:TextStyle(color: Colors.black38,fontWeight: FontWeight.w600)),
         ),
         
            custom_list_tile('All',(){},Icon(Icons.menu)),
            custom_list_tile('Accountants in Birmingham Service...',(){},Icon(Icons.arrow_forward_ios)),
            Padding(padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 20),
            child: Container(
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black26),
              ),
              child: const Center(child: Text('ADD CONTENT',style:TextStyle(fontSize: 13,color: Colors.black54,fontWeight: FontWeight.bold),),),
            ),
            ),
            custom_list_tile('Recently Read',(){},Icon(Icons.schedule)),
            custom_list_tile('Choose Theme',(){},Icon(Icons.dark_mode_outlined)),
            custom_list_tile('Integrations',(){},Icon(Icons.power_outlined)),
            custom_list_tile('New Features',(){},Icon(Icons.new_releases_sharp)),
            custom_list_tile('Setting',(){},Icon(Icons.settings_outlined)),
            custom_list_tile('Logout',(){},Icon(Icons.power_settings_new)),
            SizedBox(height: 30),
            custom_list_tile('Kamleshitain@gmail.com\nlogged in via google',(){},
            CircleAvatar(backgroundImage: AssetImage('images/profile.jpg'))),
          ],
        ),
      ),
    );
  }

  ListTile custom_list_tile(String title, var tap, var icon) {
    return ListTile(
            onTap: tap,
            leading: icon,
            title: Text(title,style: TextStyle(fontWeight: FontWeight.w700,color: Colors.black54),),
          );
  }
}

