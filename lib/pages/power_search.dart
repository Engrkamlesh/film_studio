import 'package:film_studio/component/botton_navbar.dart';
import 'package:film_studio/component/drawer.dart';
import 'package:flutter/material.dart';

class Power_Search extends StatefulWidget {
  const Power_Search({Key? key}) : super(key: key);

  @override
  State<Power_Search> createState() => _Power_SearchState();
}

class _Power_SearchState extends State<Power_Search> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const Drawer_page(),
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: const Text(
            'Power Search',
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        bottomNavigationBar: const Bottom_Nav_Bar(),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          children: [
            TextField(
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                  hintText: 'Find Specific articles in your choose',
                  hintStyle: const TextStyle(color: Colors.grey),
                  prefixIcon: const Icon(Icons.search_outlined),
                  fillColor: Colors.grey.shade200,
                  filled: true,
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      borderSide: BorderSide.none)),
            ),
            Container(
                margin: const EdgeInsets.only(top: 15, bottom: 25),
                width: double.infinity,
                height: 30,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    buildRow('ALL FEEDS', () {}),
                    const SizedBox(width: 20),
                    buildRow('LAST 30 DAYS',(){
                      showModalBottomSheet(
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(30),
                                  topLeft: Radius.circular(30))),
                          context: context,
                          builder: (context) {
                            return Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                RadioListTile(value: 1,
                                    groupValue: _value,
                                    onChanged:(val){
                                  setState(() {
                                    _value = val!;
                                  });
                                    },
                                  title: const Text('Today'),
                                    ),
                                RadioListTile(
                                  value: 2,
                                  groupValue: _value,
                                  onChanged:(val){
                                    setState(() {
                                      _value = val!;
                                    });
                                  },
                                  title: const Text('Last 7 days'),
                                ),
                                RadioListTile(value: 3,
                                  groupValue: _value,
                                  onChanged:(val){
                                    setState(() {
                                      _value = val!;
                                    });
                                  },
                                  title: const Text('Last 30 days'),
                                ),
                                RadioListTile(value: 4,
                                  groupValue: _value,
                                  onChanged:(val){
                                    setState(() {
                                      _value = val!;
                                    });
                                  },
                                  title: const Text('Forever'),
                                ),
                              ],
                            );
                          });
                    
                    }),
                    const SizedBox(width: 20),
                    buildRow('SORT BY NEWEST', () {
                      showModalBottomSheet(
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(30),
                                  topLeft: Radius.circular(30))),
                          context: context,
                          builder: (context) {
                            return Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                RadioListTile(
                                  value: 1,
                                  groupValue: _value,
                                  onChanged:(val){
                                    setState(() {
                                      _value = val!;
                                    });
                                  },
                                  title: const Text('Newest'),
                                ),
                                RadioListTile(
                                  value: 2,
                                  groupValue: _value,
                                  onChanged:(val){
                                    setState(() {
                                      _value = val!;
                                    });
                                  },
                                  title: const Text('Popularity'),
                                ),
                              ],
                            );
                          });
                    }),
                    const SizedBox(width: 20),
                    buildRow('ALL FEEDS', () {
                      showModalBottomSheet(
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(30),
                                  topLeft: Radius.circular(30))),
                          context: context,
                          builder: (context) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(20),
                                  child: Text('Embedding'),
                                ),
                                RadioListTile(
                                  value: 1,
                                  groupValue: _value,
                                  onChanged:(val){
                                    setState(() {
                                      _value = val!;
                                    });
                                  },
                                  title: const Text('Any Content'),
                                ),
                                RadioListTile(
                                  value: 2,
                                  groupValue: _value,
                                  onChanged:(val){
                                    setState(() {
                                      _value = val!;
                                    });
                                  },
                                  title: const Text('Videos'),
                                ),
                                RadioListTile(
                                  value: 3,
                                  groupValue: _value,
                                  onChanged:(val){
                                    setState(() {
                                      _value = val!;
                                    });
                                  },
                                  title: const Text('Audios'),
                                ),
                                RadioListTile(
                                  value: 4,
                                  groupValue: _value,
                                  onChanged:(val){
                                    setState(() {
                                      _value = val!;
                                    });
                                  },
                                  title: const Text('Documents'),
                                ),
                              ],
                            );
                          });
                    }),
                    const SizedBox(width: 20),
                  ],
                )),
            const Text(
              'Learn by Example',
              style: TextStyle(color: Colors.blue),
            ),
            custom_column(
                '"Elon Musk"', 'Put phrase inside guotes for an exact match'),
            custom_column('"Elon Musk" -tesla',
                'Use the minus(-)operator to exclude results which match specific keywords'),
            custom_column('tesla And "Elon Musk"',
                'Use AND to search for multiple keywords in the sa,e article'),
            custom_column('Tesla OR Ford',
                'Combine searches by putting OR between each search query'),
          ],
        ));
  }

  Padding custom_column(String title, String subtitile) {
    return Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  // color: Colors.blue,
                  border: Border.all(color: Colors.black26),
                  borderRadius: BorderRadius.circular(2)),
              child: Text(title),
            ),
            const SizedBox(height: 10),
            Text(
              subtitile,
              style: const TextStyle(color: Colors.black54),
            )
          ],
        ));
  }

  InkWell buildRow(String title, var tap) {
    return InkWell(
        onTap: tap,
        child: Row(
          children: [
            Text(
              title,
              style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 12,
                  color: Colors.black38),
            ),
            const Icon(
              Icons.keyboard_arrow_down_outlined,
              color: Colors.black38,
            )
          ],
        ));
  }
}
