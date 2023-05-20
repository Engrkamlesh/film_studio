import 'package:flutter/material.dart';

class Detail_Screen extends StatelessWidget {
  const Detail_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index){
      return Card(
        child: ListTile(
          leading: Icon(Icons.do_disturb_alt),
          title: Text('Detail Screen'),
          subtitle: Text('If the [style] argument is null, the text will use the style from the'),
        ),
      );
    });
  }
}