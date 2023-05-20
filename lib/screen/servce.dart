import 'package:flutter/material.dart';

class Service_Screen extends StatelessWidget {
  const Service_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index){
      return Card(
        child: ListTile(
          leading: Icon(Icons.settings),
          title: Text('Serivce Images'),
          subtitle: Text('If the [style] argument is null, the text will use the style from the'),
        ),
      );
    });
  }
}