import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';


class View_Salon extends StatefulWidget {
  // final int id;
  // final String salonname;
  // final int distance;
  // final double rating;
  // final String description;
  // final String phonenumber;
  // final String mobilenumber;
  // final String latitude;
  // final String longitude;
  // final String address;
  // final List imageUrl;
  // final List? availability_hours;
  const View_Salon(
      {Key? key,
      // required this.id,
      // required this.salonname,
      // required this.distance,
      // required this.rating,
      // required this.description,
      // required this.phonenumber,
      // required this.mobilenumber,
      // required this.latitude,
      // required this.longitude,
      // required this.address,
      // required this.imageUrl,
      // required this.availability_hours
      })
      : super(key: key);
  @override
  State<View_Salon> createState() => _View_SalonState();
}

class _View_SalonState extends State<View_Salon> {
  int current = 0;
  @override
  Widget build(BuildContext context) {
    List<String> catename = [
      'Details',
      'Services',
      'Galleries',
      'Reviews',
    ];

    /// List of body icon
    List body = [
      BoxDetail(),
      Box_Sevice(),
      Box_Gallery(),
      Box_Review(),
    ];

    final url =
        'https://media.istockphoto.com/id/1322277517/photo/wild-grass-in-the-mountains-at-sunset.jpg?s=612x612&w=0&k=20&c=6mItwwFFGqKNKEAzv0mv6TaxhLN3zSE43bWmFN--J5w=';
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    Color Appcolor = Color(0xff7423977);

    return Scaffold(
      backgroundColor: Vx.gray200,
      body: RefreshIndicator(
          onRefresh: () {
            throw 'nothing';
          },
          child: CustomScrollView(
              primary: true,
              shrinkWrap: false,
              slivers: <Widget>[
                SliverAppBar(
                  pinned: false,
                  expandedHeight: height / 3.5,
                  elevation: 0.5,
                  floating: true,
                  automaticallyImplyLeading: false,
                  leading: new IconButton(
                    icon: new Icon(Icons.arrow_back_ios, color: Colors.white),
                    onPressed: () {
                      Get.back();
                    },
                  ),
                  flexibleSpace: Container(
                    height: height/3.5,
                    width: width,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage(url),fit: BoxFit.cover)
                    ),
                  )
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                      SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          itemCount: catename.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (ctx, index) {
                            return GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      current = index;
                                    });
                                  },
                                  child: AnimatedContainer(
                                    duration: const Duration(milliseconds: 300),
                                    margin: const EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      color: current == index
                                          ? Appcolor
                                          : Colors.white70,
                                      borderRadius: current == index
                                          ? BorderRadius.circular(12)
                                          : BorderRadius.circular(10),
                                    ),
                                    child: Text(
                                      catename[index],
                                    )
                                        .text
                                        .color(current == index
                                            ? Colors.white
                                            : Appcolor)
                                        .bold
                                        .make()
                                        .px(10)
                                        .py(10),
                                  ),
                            );
                            }
                            )
                            ),
                 Container(
                          margin: const EdgeInsets.only(top: 20),
                          width: width,
                          height: double.maxFinite,
                          child:  
                           body[current]
                          ),
                 
                    ],),
                  ),
                  //   child: Container(
                  // width: width,
                  // height: height,
                  // margin: const EdgeInsets.all(5),
                  // padding: const EdgeInsets.only(right: 10, left: 10, top: 10),
                  // child: Column(children: [
                  //   /// CUSTOM TABBAR
                  //   SizedBox(
                  //     width: double.infinity,
                  //     height: 60,
                  //     child: ListView.builder(
                  //         physics: const BouncingScrollPhysics(),
                  //         itemCount: catename.length,
                  //         scrollDirection: Axis.horizontal,
                  //         itemBuilder: (ctx, index) {
                  //           return Column(
                  //             children: [
                  //               GestureDetector(
                  //                 onTap: () {
                  //                   setState(() {
                  //                     current = index;
                  //                   });
                  //                 },
                  //                 child: AnimatedContainer(
                  //                   duration: const Duration(milliseconds: 300),
                  //                   margin: const EdgeInsets.all(5),
                  //                   decoration: BoxDecoration(
                  //                     color: current == index
                  //                         ? Appcolor
                  //                         : Colors.white70,
                  //                     borderRadius: current == index
                  //                         ? BorderRadius.circular(12)
                  //                         : BorderRadius.circular(10),
                  //                   ),
                  //                   child: Text(
                  //                     catename[index],
                  //                   )
                  //                       .text
                  //                       .color(current == index
                  //                           ? Colors.white
                  //                           : Appcolor)
                  //                       .bold
                  //                       .make()
                  //                       .px(10)
                  //                       .py(10),
                  //                 ),
                  //               ),
                  //             ],
                  //           );
                  //         }),
                  //   ),

                    // /// MAIN BODY
                    // Expanded(
                    //   child: Container(
                    //       margin: const EdgeInsets.only(top: 20),
                    //       width: double.infinity,
                    //       height: double.maxFinite,
                    //       child: body[current]),
                    // ),
                  // ]),
                )
              ])),
    );
  }
}

class Box_Review extends StatelessWidget {
  const Box_Review({super.key});
final url2 = 'https://images.pexels.com/photos/33109/fall-autumn-red-season.jpg?auto=compress&cs=tinysrgb&w=a';
 @override
  Widget build(BuildContext context) {
      final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
           Container(
                    height: height/3.5,
                    width: width,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage(url2),fit: BoxFit.cover)
                    ),
                  ), Container(
                    height: height/3.5,
                    width: width,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage(url2),fit: BoxFit.cover)
                    ),
                  ), Container(
                    height: height/3.5,
                    width: width,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage(url2),fit: BoxFit.cover)
                    ),
                  ), Container(
                    height: height/3.5,
                    width: width,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage(url2),fit: BoxFit.cover)
                    ),
                  ),
                   Container(
                    height: height/3.5,
                    width: width,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage(url2),fit: BoxFit.cover)
                    ),
                  )
    ],);
  }
}

class Box_Gallery extends StatelessWidget {
  const Box_Gallery({super.key});
final url3 = "https://images.pexels.com/photos/36762/scarlet-honeyeater-bird-red-feathers.jpg?auto=compress&cs=tinysrgb&w=600";

 @override
  Widget build(BuildContext context) {
      final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
           Container(
                    height: height/3.5,
                    width: width,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage(url3),fit: BoxFit.cover)
                    ),
                  ), Container(
                    height: height/3.5,
                    width: width,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage(url3),fit: BoxFit.cover)
                    ),
                  ), Container(
                    height: height/3.5,
                    width: width,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage(url3),fit: BoxFit.cover)
                    ),
                  ), Container(
                    height: height/3.5,
                    width: width,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage(url3),fit: BoxFit.cover)
                    ),
                  ),
                   Container(
                    height: height/3.5,
                    width: width,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage(url3),fit: BoxFit.cover)
                    ),
                  )
    ],);
  }
}

class Box_Sevice extends StatelessWidget {
  const Box_Sevice({super.key});
final url1 = 'https://images.pexels.com/photos/417074/pexels-photo-417074.jpeg?auto=compress&cs=tinysrgb&w=600';
 @override
  Widget build(BuildContext context) {
      final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return 
    
     Column(
      mainAxisSize: MainAxisSize.max,
      children: [
           Container(
                    height: height/3.5,
                    width: width,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage(url1),fit: BoxFit.cover)
                    ),
                  ), Container(
                    height: height/3.5,
                    width: width,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage(url1),fit: BoxFit.cover)
                    ),
                  ), Container(
                    height: height/3.5,
                    width: width,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage(url1),fit: BoxFit.cover)
                    ),
                  ), Container(
                    height: height/3.5,
                    width: width,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage(url1),fit: BoxFit.cover)
                    ),
                  ),
                   Container(
                    height: height/3.5,
                    width: width,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage(url1),fit: BoxFit.cover)
                    ),
                  )
    ],);
  
  }
}

class BoxDetail extends StatelessWidget {
  const BoxDetail({super.key});
    final url = "https://images.pexels.com/photos/2674052/pexels-photo-2674052.jpeg?auto=compress&cs=tinysrgb&w=600";
 @override
  Widget build(BuildContext context) {
      final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
           Container(
                    height: height/3.5,
                    width: width,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage(url),fit: BoxFit.cover)
                    ),
                  ), Container(
                    height: height/3.5,
                    width: width,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage(url),fit: BoxFit.cover)
                    ),
                  ), Container(
                    height: height/3.5,
                    width: width,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage(url),fit: BoxFit.cover)
                    ),
                  ), Container(
                    height: height/3.5,
                    width: width,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage(url),fit: BoxFit.cover)
                    ),
                  ),
                   Container(
                    height: height/3.5,
                    width: width,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage(url),fit: BoxFit.cover)
                    ),
                  )
    ],);
  }
}