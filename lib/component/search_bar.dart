import 'package:flutter/material.dart';

class Search_bar extends SearchDelegate{
  @override
  List<Widget>? buildActions(BuildContext context) {
    [
      IconButton(onPressed: (){}, icon: Icon(Icons.clear))
  ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(onPressed: (){
      Navigator.pop(context);
    }, icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text('data');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index){
      return ListTile(
        title: Text('data'),
        trailing: Icon(Icons.arrow_forward_ios),
      );
    });
  }

}