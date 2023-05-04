import 'package:film_studio/pages/integration_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class New_Page extends StatefulWidget {
  const New_Page({Key? key}) : super(key: key);

  @override
  State<New_Page> createState() => _New_PageState();
}

class _New_PageState extends State<New_Page> {
  double value = 1.0;
  double _currentSliderValue = 0.0;
  String? _sliderStatus;
  bool ispeaking = false;
  int startword =0;
  int endword = 0;

  final _flutterTts = FlutterTts();

  String title = 'Alphabet to let go 12,000 employees amind broaders tech layoffs';
  String paragraph =
      'Google LLC is an American multinational technology company '
      'focusing on search engine technology, online advertising, '
      'cloud computing, computer software, quantum computing,'
      ' e-commerce, artificial intelligence, and consumer electronics';
  // ignore: prefer_final_fields
  // List finalPara = [];
  // void list(){
  //   _finalPara.add(title);
  //   _finalPara.add(paragraph);
  // }

  void inisilizTts(){
    _flutterTts.setStartHandler(() {
      setState(() {
        ispeaking = true;
      });
    });
    _flutterTts.setCompletionHandler(() {
      setState(() {
        ispeaking = false;
      });
    });
    _flutterTts.setErrorHandler((message) {
      setState(() {
        ispeaking = false;
      });
    });
    _flutterTts.setPauseHandler(() {
      setState(() {
        ispeaking = false;
      });
    });
    _flutterTts.setProgressHandler((paragraph, start, end, word) {
          setState(() {
            start = startword;
            end = endword;
          });
    });
  }

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    inisilizTts();
  }

  void speaking(){
      _flutterTts.speak(paragraph);
  }

  void stop() async{
    await _flutterTts.stop();
  }

  void pause() async{
    await _flutterTts.pause();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _flutterTts.stop();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white30,
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () {
                  showModalBottomSheet(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30),
                              topLeft: Radius.circular(30))),
                      context: context,
                      builder: (context) {
                        return Padding(
                            padding: EdgeInsets.all(20),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text('Theme',
                                                style: TextStyle(
                                                    color: Colors.blue)),
                                            Row(
                                              children: [
                                                IconButton(
                                                    onPressed: () {},
                                                    icon: const Icon(
                                                      Icons.check_circle_outline,
                                                      color: Colors.black,
                                                      size: 40,
                                                    )),
                                                IconButton(
                                                    onPressed: () {},
                                                    icon: const Icon(
                                                      Icons.circle,
                                                      color: Colors.black,
                                                      size: 40,
                                                    ))
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(width: 10),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Text size',
                                              style:
                                                  TextStyle(color: Colors.blue),
                                            ),
                                            SizedBox(height: 10),
                                            Row(
                                              children: [
                                                Text('A'),
                                                Container(
                                                  width: 150,
                                                  child:Slider(
                                                    min: 0,
                                                    max: 1,
                                                    value: value,onChanged: (val){
                                                    value = val;
                                                    setState(() {

                                                    });
                                                  },)
                                                ),
                                                Text('A',style: TextStyle(fontSize: 18),)
                                              ],
                                            ),
                                          ],
                                        ),
                                      ]),
                                  SizedBox(height: 20),
                                  Text(
                                    'Font',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.blue),
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      fontstyle('Merriweather'),
                                      fontstyle("Roboto"),
                                      fontstyle('ITC charter'),
                                    ],
                                  ),
                                  SizedBox(height: 20)
                                ]));
                      });
                },
                icon: const Icon(
                  Icons.spellcheck_outlined,
                  color: Colors.black38,
                )),
            const SizedBox(width: 10),
            const Icon(
              Icons.bookmark_border_rounded,
              color: Colors.black38,
            ),
            const SizedBox(width: 10),
            const Icon(
              Icons.star_border_outlined,
              color: Colors.black38,
            ),
            const SizedBox(width: 10),
            const Icon(
              Icons.share_outlined,
              color: Colors.black38,
            ),
            const SizedBox(width: 10),
            IconButton(
              onPressed: () {
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
                          const ListTile(
                            leading:
                                Icon(Icons.subdirectory_arrow_left_outlined),
                            title: Text("Mark as Unread"),
                          ),
                          ListTile(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Integration_Page()));
                            },
                            leading: const Icon(Icons.power_outlined),
                            title: const Text("Add Integrations"),
                          ),
                        ],
                      );
                    });
              },
              icon: const Icon(Icons.more_horiz),
              color: Colors.black38,
            ),
            const SizedBox(width: 10),
          ],
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black38,
              )),
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10, bottom: 20),
                child: Text.rich(
                  TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text: "Google 12000 Alphabet .",
                          style: TextStyle(
                              fontSize: 13, color: Colors.greenAccent)),
                      TextSpan(
                          text:
                              "SiliconANGLE / by Maria Deulscher / january 20, 2023 at 12:32PM",
                          style: TextStyle(fontSize: 12, color: Colors.grey)),
                    ],
                  ),
                ),
              ),
              const Text(
                'Reading time 5 mins and voice listen time 2 mins',
                style: TextStyle(color: Colors.redAccent, fontSize: 12),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage("images/google.jpg"),
                          fit: BoxFit.fill)),
                ),
              ),
              Text(paragraph,
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 50),
              Center(
                child:ElevatedButton(onPressed: (){
                  ispeaking?stop():speaking();
                }, child:ispeaking?Text('Stop'):Text('Listen'))
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //   FloatingActionButton(onPressed: (){
                //     ispeaking ? pause() : speaking();},child:ispeaking ?Icon(Icons.pause):Icon(Icons.play_arrow),backgroundColor: Colors.green,),
                //   FloatingActionButton(onPressed: (){
                //     pause();},child: Icon(Icons.pause),backgroundColor: Colors.redAccent,)
                // ],),
              )
            ],
          ),
        )));
  }

  Column fontstyle(String title) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 90,
          decoration: BoxDecoration(border: Border.all(color: Colors.black54)),
          child: const Center(
            child: Text(
              "Ag",
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(title)
      ],
    );
  }
}
