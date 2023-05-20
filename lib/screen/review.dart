import 'package:flutter/material.dart';

class Reviews_Screen extends StatelessWidget {
  const Reviews_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index){
      return Card(
        child: ListTile(
          leading: Icon(Icons.star_border),
          title: Text('Reviews Images'),
          subtitle: Text('If the [style] argument is null, the text will use the style from the'),
        ),
      );
    });
  }
}