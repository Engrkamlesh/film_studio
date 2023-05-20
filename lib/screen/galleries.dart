import 'package:flutter/material.dart';

class Galleries_Screen extends StatelessWidget {
  const Galleries_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index){
      return Card(
        child: ListTile(
          leading: Icon(Icons.person_outline),
          title: Text('Salon Images'),
          subtitle: Text('If the [style] argument is null, the text will use the style from the'),
        ),
      );
    });
  }
}