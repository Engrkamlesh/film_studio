import 'package:film_studio/component/botton_navbar.dart';
import 'package:film_studio/component/drawer.dart';
import 'package:film_studio/component/search_bar.dart';
import 'package:flutter/material.dart';

class Add_Content extends StatefulWidget {
  const Add_Content({Key? key}) : super(key: key);

  @override
  State<Add_Content> createState() => _Add_ContentState();
}

class _Add_ContentState extends State<Add_Content> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          drawer: const Drawer_page(),
          appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            actions: const [
              Icon(
                Icons.language_outlined,
                color: Colors.black54,
              ),
              SizedBox(width: 15)
            ],
            title: const Text(
              'Add Content',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
            backgroundColor: Colors.white,
            bottom: const TabBar(
                labelStyle: TextStyle(fontWeight: FontWeight.w700),
                labelColor: Colors.black,
                isScrollable: true,
                unselectedLabelColor: Colors.black45,
                indicatorColor: Colors.transparent,
                tabs: [
                  Tab(text: 'Websites'),
                  Tab(text: 'Twitter'),
                  Tab(text: 'Reddit'),
                  Tab(
                    text: 'Newsletters',
                  )
                ]),
          ),
          bottomNavigationBar: const Bottom_Nav_Bar(),
          body: TabBarView(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(top: 15, bottom: 25),
                            child: TextField(
                              onTap: () {
                                showSearch(
                                    context: context, delegate: Search_bar());
                              },
                              decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 10),
                                  hintText: 'Type a name, topic or paste a URL',
                                  hintStyle: const TextStyle(color: Colors.grey),
                                  prefixIcon: const Icon(Icons.search_outlined),
                                  fillColor: Colors.grey.shade200,
                                  filled: true,
                                  border: const OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      borderSide: BorderSide.none)),
                            )),
                        const Text(
                          'Feature',
                          style: TextStyle(fontSize: 15, color: Colors.blue),
                        ),
                        Container(
                          width: double.infinity,
                          height: 250,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 10,
                              itemBuilder: (context, index) {
                                return Container(
                                  decoration: BoxDecoration(
                                      // color: Colors.blue,
                                      borderRadius: BorderRadius.circular(10),
                                      image: const DecorationImage(
                                          image:
                                              AssetImage('images/tech.jpg'),
                                          fit: BoxFit.cover)),
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 20),
                                  height: 170,
                                  width: 120,
                                );
                              }),
                        ),
                        const Text(
                          'Industries',
                          style: TextStyle(fontSize: 15, color: Colors.blue),
                        ),
                        Column(
                          children: [
                            custom_field(),
                            custom_field(),
                            custom_field(),
                            custom_field(),
                            custom_field(),
                          ],
                        ),
                        const Text(
                          'Trend',
                          style: TextStyle(fontSize: 15, color: Colors.blue),
                        ),
                        Column(
                          children: [
                            custom_field(),
                            custom_field(),
                            custom_field(),
                            custom_field(),
                            custom_field(),
                          ],
                        ),
                        const Text(
                          'Skill',
                          style: TextStyle(fontSize: 15, color: Colors.blue),
                        ),
                        Column(
                          children: [
                            custom_field(),
                            custom_field(),
                            custom_field(),
                            custom_field(),
                            custom_field(),
                          ],
                        ),
                        const Text(
                          'Fun',
                          style: TextStyle(fontSize: 15, color: Colors.blue),
                        ),
                        Column(
                          children: [
                            custom_field(),
                            custom_field(),
                            custom_field(),
                            custom_field(),
                            custom_field(),
                          ],
                        )
                      ],
                    ))),
              ),
              const Center(
                  child: Text(
                'Twitter',
                style: TextStyle(fontSize: 50),
              )),
              const Center(
                  child: Text(
                'Reddit',
                style: TextStyle(fontSize: 50),
              )),
              const Center(
                  child: Text(
                'Newsletters',
                style: TextStyle(fontSize: 50),
              ))
            ],
          ),
        ));
  }

  Row custom_field() {
    return Row(children: [
      Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image: const DecorationImage(
                image: AssetImage('images/music.jpg'), fit: BoxFit.cover)),
      ),
      const SizedBox(width: 10),
      const Text('Music')
    ]);
  }
}
