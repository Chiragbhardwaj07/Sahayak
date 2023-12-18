// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:chirag_s_application/presentation/home_page/models/news_view_model.dart';
// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

// class News extends StatefulWidget {
//   const News({super.key});

//   @override
//   State<News> createState() => _NewsState();
// }

// class _NewsState extends State<News> {
//   NewsViewModel newsViewModel = NewsViewModel();
//   final format = DateFormat('MMMM dd, yyyy');
//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery.of(context).size.height;
//     final width = MediaQuery.of(context).size.width;
//     return ListView(
//       children: [
//         SizedBox(
//           height: height * 0.99,
//           width: width,
//           child: FutureBuilder(
//               future: newsViewModel.FetchCategoriesNewsapi('court'),
//               builder: (BuildContext context, snapshot) {
//                 if (snapshot.connectionState == ConnectionState.waiting) {
//                   return Center(
//                       child: CircularProgressIndicator(
//                     color: Colors.white,
//                   ));
//                 } else if (snapshot.hasError) {
//                   print('Error: ${snapshot.error}');
//                   return Center(
//                     child: Text('Error loading data'),
//                   );
//                 } else if (snapshot.data == null ||
//                     snapshot.data!.articles == null) {
//                   return Center(
//                     child: Text('No data available'),
//                   );
//                 } else {
//                   return Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: ListView.builder(
//                         scrollDirection: Axis.vertical,
//                         itemCount: snapshot.data!.articles!.length,
//                         itemBuilder: (context, index) {
//                           DateTime datetime = DateTime.parse(snapshot
//                               .data!.articles![index].publishedAt
//                               .toString());
//                           return Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: GestureDetector(
//                               onTap: () {},
//                               child: Container(
//                                 padding: EdgeInsets.symmetric(
//                                     horizontal: width * 0.04),
//                                 child: Stack(
//                                   alignment: Alignment.center,
//                                   children: [
//                                     Container(
//                                       height: height * 0.45,
//                                       width: width * 0.9,
//                                       child: ClipRRect(
//                                         borderRadius: BorderRadius.circular(20),
//                                         child: CachedNetworkImage(
//                                           imageUrl: snapshot
//                                               .data!.articles![index].urlToImage
//                                               .toString(),
//                                           fit: BoxFit.cover,
//                                           placeholder: (context, url) =>
//                                               CircularProgressIndicator(
//                                             color: Colors.white,
//                                           ),
//                                           errorWidget: (context, url, error) =>
//                                               Icon(
//                                             Icons.error_rounded,
//                                             color: Colors.red,
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                     Positioned(
//                                       bottom: 5,
//                                       child: Card(
//                                         color: Colors.grey[800],
//                                         elevation: 5,
//                                         shape: RoundedRectangleBorder(
//                                             borderRadius:
//                                                 BorderRadius.circular(15)),
//                                         child: Container(
//                                           height: height * 0.22,
//                                           width: width * 0.80,
//                                           color: Colors.transparent,
//                                           alignment: Alignment.bottomCenter,
//                                           child: Center(
//                                               child: Column(
//                                             children: [
//                                               Container(
//                                                 color: Colors.transparent,
//                                                 width: width * 0.85,
//                                                 child: Padding(
//                                                   padding:
//                                                       const EdgeInsets.all(8.0),
//                                                   child: Text(
//                                                     snapshot.data!
//                                                         .articles![index].title
//                                                         .toString(),
//                                                     maxLines: 3,
//                                                     overflow:
//                                                         TextOverflow.ellipsis,
//                                                     style: TextStyle(
//                                                         color: Colors.white,
//                                                         fontSize: 17,
//                                                         fontWeight:
//                                                             FontWeight.w700),
//                                                   ),
//                                                 ),
//                                               ),
//                                               Container(
//                                                 width: width * 0.85,
//                                                 child: Padding(
//                                                   padding: const EdgeInsets
//                                                       .symmetric(horizontal: 8),
//                                                   child: Text(
//                                                     snapshot
//                                                         .data!
//                                                         .articles![index]
//                                                         .description
//                                                         .toString(),
//                                                     maxLines: 2,
//                                                     overflow: TextOverflow.fade,
//                                                     style: TextStyle(
//                                                         fontSize: 11,
//                                                         color: Colors.grey,
//                                                         fontWeight:
//                                                             FontWeight.w400),
//                                                   ),
//                                                 ),
//                                               ),
//                                               SizedBox(
//                                                 height: height * 0.02,
//                                               ),
//                                               Container(
//                                                 width: width * 0.85,
//                                                 child: Row(
//                                                   mainAxisAlignment:
//                                                       MainAxisAlignment
//                                                           .spaceAround,
//                                                   children: [
//                                                     Text(
//                                                       snapshot
//                                                           .data!
//                                                           .articles![index]
//                                                           .source!
//                                                           .name
//                                                           .toString(),
//                                                       maxLines: 3,
//                                                       overflow:
//                                                           TextOverflow.ellipsis,
//                                                       style: TextStyle(
//                                                           fontSize: 11,
//                                                           color: Colors.blue,
//                                                           fontWeight:
//                                                               FontWeight.w700),
//                                                     ),
//                                                     Text(
//                                                       format.format(datetime),
//                                                       style: TextStyle(
//                                                           fontSize: 11,
//                                                           color: Colors.white,
//                                                           fontWeight:
//                                                               FontWeight.w500),
//                                                     ),
//                                                   ],
//                                                 ),
//                                               )
//                                             ],
//                                           )),
//                                         ),
//                                       ),
//                                     )
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           );
//                         }),
//                   );
//                 }
//               }),
//         )
//       ],
//     );
//   }
// }
