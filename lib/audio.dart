// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_tts/flutter_tts.dart';

// class Fruit {
//   final String title;
//   final String description;
//   final String imagePath;
//   final String name;

//   Fruit({
//     required this.title,
//     required this.description,
//     required this.imagePath,
//     required this.name,
//   });
// }

// void main() {
//   runApp(MyList());
// }

// class ThumbnailPages extends  State<ThumbnailPage> {
//   final FlutterTts flutterTts = FlutterTts();
//   bool isPlaying = false;
//   List<Fruit> fruits = [
//     Fruit(
//       title: 'Apple (noun)',
//       name: 'Apple',
//       description:
//           'They\'re rich in fiber and antioxidants. Eating them is linked to a lower chance of getting many chronic conditions, including diabetes, heart disease, and cancer. Apples may also promote weight loss and improve gut and brain health.',
//       imagePath: 'img/apple.jpg',
//     ),
//     Fruit(
//       title: 'Mango (noun)',
//       name: 'Mango',
//       description:
//           'Mango is a delicious and juicy fruit that is rich in vitamins, minerals, and antioxidants. It is known for its sweet and tropical flavor and is a favorite in many cuisines around the world.',
//       imagePath: 'img/fresh-mango-fruits.jpg',
//     ),
//     Fruit(
//       title: 'Orange (noun)',
//       name: 'Orange',
//       description:
//           '''Oranges are a great source of vitamin C, fiber, and antioxidants. They can help boost your immune system, improve skin health, and aid in digestion. Including oranges in your diet can have numerous health benefits.''',
//       imagePath: 'img/natural-fresh-orange-fruits-433.jpg',
//     ),
//     Fruit(
//       title: 'Green Grapes (noun)',
//       name: 'Green Grapes',
//       description:
//           '''Green grapes are a delicious and healthy snack. They are rich in vitamins and antioxidants. Regular consumption of green grapes may help improve heart health and provide other health benefits.''',
//       imagePath: 'img/Fresh-Green-Grapes.jpg',
//     ),
//     Fruit(
//       title: 'Papaya (noun)',
//       name: 'Papaya',
//       description:
//           '''Papaya is a tropical fruit known for its sweet and vibrant orange flesh. It is rich in vitamins, minerals, and dietary fiber. Papaya can help improve digestion and promote skin health.''', // Replace with your content
//       imagePath: 'img/papaya.jpg',
//     ),
//     Fruit(
//       title: 'Pineapple (noun)',
//       name: 'Pineapple',
//       description:
//           '''Pineapple is a tropical fruit known for its sweet and tangy flavor. It is packed with vitamins, minerals, and antioxidants. Pineapple can aid digestion and boost the immune system.''',
//       imagePath: 'img/pineapple.webp',
//     ),
//     Fruit(
//       title: 'Banana (noun)',
//       name: 'Banana',
//       description:
//           '''Banana is a tropical fruit known for its natural sweetness. It is a good source of potassium, vitamins, and dietary fiber. Bananas can provide energy and support heart health.''',
//       imagePath: 'img/51ebZJ+DR4L._AC_UF1000,1000_QL80_.jpg',
//     ),
//     Fruit(
//       title: 'Pomegranate (noun)',
//       name: 'Pomegranate',
//       description:
//           '''Pomegranate is a delicious and nutritious fruit known for its juicy seeds. It is rich in antioxidants, vitamins, and minerals. Pomegranate may have various health benefits, including improving heart health and reducing inflammation.''',
//       imagePath: 'img/pomegranate-1-istock-612833996-1.jpg',
//     ),
//     Fruit(
//       title: 'Cherry (noun)',
//       name: 'Cherry',
//       description:
//           '''Cherries are small, round fruits that come in various colors. They are rich in vitamins, minerals, and antioxidants. Cherries may have benefits for heart health, sleep quality, and reducing muscle soreness.''', // Replace with your content
//       imagePath: 'img/30000996_12-fresho-cherry.webp',
//     ),
//     Fruit(
//       title: 'Watermelon (noun)',
//       name: 'Watermelon',
//       description:
//           '''Watermelon is a delicious and refreshing fruit that's perfect for staying hydrated during the summer. It's low in calories and contains essential vitamins and minerals. Eating watermelon may also have various health benefits.''',
//       imagePath: 'img/whole-and-slices-watermelon.webp',
//     ),
//     // Add more fruits as needed
//   ];

 

//   Future<void> _speak(String text) async {
//     try {
//       await flutterTts.setLanguage("en-IN");

//       await flutterTts.setSpeechRate(0.3);

//       if (isPlaying) {
//         await flutterTts.stop();
//         isPlaying = false;
//       } else {
//         await flutterTts.speak(text);
//         isPlaying = true;
//       }
//     } catch (e) {
//       print("Error: $e");
//     }
//   }

//   void _stop() async {
//     try {
//       await flutterTts.stop();
//       isPlaying = false;
//     } catch (e) {
//       print("Error stopping audio: $e");
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: const Color(0xFF026279),
//           title: const Text('Fruits'),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 _stop();
//                 // Handle the "Learn More" button action
//               },
//               child: const Text(
//                 'Learn Mode',
//                 style: TextStyle(
//                   color: Colors.white, // Set the text color
//                 ),
//               ),
//             ),
//           ],
//         ),
//         body: Stack(
//           children: [
//             Image.asset(
//               'img/bg_image.jpg', // Replace with the path to your background image
//               width: double.infinity,
//               height: double.infinity,
//               fit: BoxFit.fill,
//             ),
//             Padding(
//               padding: EdgeInsets.all(16),
//               child: SingleChildScrollView(
//                 child: Align(
//                   alignment: Alignment.topCenter,
//                   child: Wrap(
//                     spacing: 30.0, // Spacing between items
//                     runSpacing: 8.0, // Spacing between rows
//                     children: List.generate(
//                       fruits.length,
//                       (index) {
//                         return GestureDetector(
//                           onTap: () {
//                             showDialog(
//                               context: context,
//                               builder: (BuildContext context) {
//                                 return _buildDialogContent(
//                                   context,
//                                   fruits[index].title,
//                                   fruits[index].description,
//                                   fruits[index].imagePath,
//                                 );
//                               },
//                             );
//                           },
//                           child: Column(
//                             children: [
//                               Container(
//                                 width: 140,
//                                 height: 140,
//                                 decoration: BoxDecoration(
//                                   shape: BoxShape.circle,
//                                   border: Border.all(
//                                     color: const Color(0xFF048664),
//                                     width: 4.0,
//                                   ),
//                                   image: DecorationImage(
//                                     image: AssetImage(fruits[index].imagePath),
//                                     fit: BoxFit.cover,
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(height: 8.0),
//                               // Spacing between image and text
//                               Container(
//                                 decoration: BoxDecoration(
//                                   color: const Color(
//                                       0xFF048664), // Set the background color
//                                   borderRadius: BorderRadius.circular(
//                                       8.0), // Set border radius as needed
//                                 ),
//                                 padding: const EdgeInsets.all(
//                                     8.0), // Add padding to the text
//                                 child: Text(
//                                   fruits[index].name,
//                                   style: const TextStyle(
//                                     color: Colors.white,
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 18,
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         );
//                       },
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildDialogContent(
//     BuildContext context,
//     String title,
//     String description,
//     String imagePath,
//   ) {
//     return AlertDialog(
//       // contentPadding: EdgeInsets.zero,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
//       content: Stack(
//         children: [
//           Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Align(
//                 alignment: Alignment.topRight,
//                 child: SizedBox(
//                   width: 35,
//                   height: 35,
//                   child: Container(
//                     decoration: const BoxDecoration(
//                       color: Colors.red,
//                       shape: BoxShape.circle,
//                     ),
//                     child: Center(
//                       child: IconButton(
//                         icon: const Icon(
//                           Icons.close,
//                           color: Colors.white,
//                           size: 20,
//                         ),
//                         onPressed: () {
//                           _stop();
//                           Navigator.of(context).pop();
//                         },
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 10),
//               Container(
//                 height: 200,
//                 width: 300,
//                 // margin: EdgeInsets.symmetric(horizontal: 5.0),
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(8.0),
//                   image: DecorationImage(
//                     fit: BoxFit.cover,
//                     image: AssetImage(imagePath),
//                   ),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.withOpacity(0.5),
//                       spreadRadius: 2,
//                       blurRadius: 7,
//                       offset: const Offset(0, 3), // changes position of shadow
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 8),
//               Text(
//                 title,
//                 style: const TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 18,
//                 ),
//               ),
//               const SizedBox(height: 8),
//               Text(description),
//               const SizedBox(height: 16),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   ElevatedButton(
//                     onPressed: () {
//                       // Handle the action for the Listen button
//                       _speak('$title (noun) $description');
//                     },
//                     child: Padding(
//                       padding: const EdgeInsets.all(5.0),
//                       child: Row(
//                         mainAxisSize: MainAxisSize.min,
//                         children: [
//                           Icon(
//                             isPlaying
//                                 ? Icons.pause_circle_outline
//                                 : Icons.play_circle_outline,
//                             color: Colors.white,
//                           ),
//                           const SizedBox(width: 8.0),
//                           const Text('Listen',
//                               style: TextStyle(color: Colors.white)),
//                         ],
//                       ),
//                     ),
//                   ),
//                   ElevatedButton(
//                     onPressed: () {
//                       showDialog(
//                         context: context,
//                         builder: (BuildContext context) {
//                           return _buildDialogWithCarousel(context, fruits);
//                         },
//                       );
//                     },
//                     child: const Padding(
//                       padding: EdgeInsets.all(5.0),
//                       child: Row(
//                         mainAxisSize: MainAxisSize.min,
//                         children: [
//                           Icon(Icons.movie_creation, color: Colors.white),
//                           SizedBox(width: 8.0),
//                           Text('Slideshow',
//                               style: TextStyle(color: Colors.white)),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
///////--------------------------------------------------
//   Widget _buildDialogWithCarousel(
//     BuildContext context,
//     List<Fruit> fruits,
//   ) {
//     return AlertDialog(
//       content: Container(
//         width: MediaQuery.of(context).size.width * 0.8,
//         child: CarouselSlider(
//           items: fruits.map((fruit) {
//             return Builder(
//               builder: (BuildContext context) {
//                 return GestureDetector(
//                   onTap: () {
//                     showDialog(
//                       context: context,
//                       builder: (BuildContext context) {
//                         return _buildDialogContent(
//                           context,
//                           fruit.title,
//                           fruit.description,
//                           fruit.imagePath,
//                         );
//                       },
//                     );
//                   },
//                   child: Column(
//                     children: [
//                       Align(
//                         alignment: Alignment.topRight,
//                         child: SizedBox(
//                           width: 35,
//                           height: 35,
//                           child: Container(
//                             decoration: const BoxDecoration(
//                               color: Colors.red,
//                               shape: BoxShape.circle,
//                             ),
//                             child: Center(
//                               child: IconButton(
//                                 icon: const Icon(
//                                   Icons.close,
//                                   color: Colors.white,
//                                   size: 20,
//                                 ),
//                                 onPressed: () {
//                                   _stop();
//                                   Navigator.of(context).pop();
//                                 },
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                       Container(
//                         height: 150,
//                         width: MediaQuery.of(context).size.width,
//                         margin: EdgeInsets.symmetric(horizontal: 5.0),
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(8.0),
//                           image: DecorationImage(
//                             fit: BoxFit.cover,
//                             image: AssetImage(fruit.imagePath),
//                           ),
//                         ),
//                         // child: Center(
//                         //   child: Text(
//                         //     fruit.title,
//                         //     style: const TextStyle(
//                         //       color: Colors.white,
//                         //       fontWeight: FontWeight.bold,
//                         //       fontSize: 24.0,
//                         //     ),
//                         //   ),
//                         // ),
//                       ),
//                       const SizedBox(
//                           height:
//                               13), // Adjust the spacing between image and text
//                       Text(
//                         fruit.title,
//                         style: const TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 18,
//                         ),
//                       ),
//                       const SizedBox(height: 8),
//                       Text(
//                         fruit.description,
//                         style: const TextStyle(fontSize: 16),
//                       ),
//                     ],
//                   ),
//                 );
//               },
//             );
//           }).toList(),
//           options: CarouselOptions(
//             autoPlay: true,
//             autoPlayInterval: Duration(seconds: 4),
//             enlargeCenterPage: true,
//             aspectRatio: 16 / 9,
//             viewportFraction: 0.9,
//             height: 450,
//           ),
//         ),
//       ),
//     );
//   }
// }

//----------------------------------
// class ThumbnailPages extends State<ThumbnailPage> {
//   final FlutterTts flutterTts = FlutterTts();
//   bool isPlaying = false;

//   Future<void> _speak(String text) async {
//     try {
//       await flutterTts.setLanguage("en-IN");

//       await flutterTts.setSpeechRate(0.3);

//       if (isPlaying) {
//         await flutterTts.stop();
//         isPlaying = false;
//       } else {
//         await flutterTts.speak(text);
//         isPlaying = true;
//       }
//     } catch (e) {
//       print("Error: $e");
//     }
//   }

//   void _stop() async {
//     try {
//       await flutterTts.stop();
//       isPlaying = false;
//     } catch (e) {
//       print("Error stopping audio: $e");
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: const Color(0xFF026279),
//         title: const Text('Fruits'),
//         actions: [
//           TextButton(
//             onPressed: () {
//               _stop();
//               // Handle the "Learn More" button action
//             },
//             child: const Text(
//               'Learn Mode',
//               style: TextStyle(
//                 color: Colors.white, // Set the text color
//               ),
//             ),
//           ),
//         ],
//       ),
//       body: Stack(
//         children: [
//           // Background Image
//           Image.asset(
//             'img/bg_image.jpg', // Replace with the path to your background image
//             width: double.infinity,
//             height: double.infinity,
//             fit: BoxFit.fill,
//           ),

//           // Content on top of the background image
//           SingleChildScrollView(
//             child: Padding(
//               padding: const EdgeInsets.only(
//                   top: 16.0, bottom: 16.0), // Add padding to the Row
//               child: Column(
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Column(
//                         children: [
//                           GestureDetector(
//                             onTap: () {
//                               // Show a dialog with the image in a larger size
//                               showDialog(
//                                 context: context,
//                                 builder: (BuildContext context) {
//                                   return AlertDialog(
//                                     content: Column(
//                                       mainAxisSize: MainAxisSize.min,
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: [
//                                         Align(
//                                           alignment: Alignment.topRight,
//                                           child: SizedBox(
//                                             width: 35,
//                                             height: 35,
//                                             child: Container(
//                                               decoration: const BoxDecoration(
//                                                 color: Colors.red,
//                                                 shape: BoxShape.circle,
//                                               ),
//                                               child: Center(
//                                                 child: IconButton(
//                                                   icon: const Icon(
//                                                     Icons.close,
//                                                     color: Colors.white,
//                                                     size: 20,
//                                                   ),
//                                                   onPressed: () {
//                                                     _stop();
//                                                     Navigator.of(context).pop();
//                                                   },
//                                                 ),
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                         const SizedBox(height: 10),
//                                         Container(
//                                           width: 300,
//                                           height: 200,
//                                           decoration: BoxDecoration(
//                                             image: const DecorationImage(
//                                               image:
//                                                   AssetImage('img/apple.jpg'),
//                                             ),
//                                             boxShadow: [
//                                               BoxShadow(
//                                                 color: Colors.grey
//                                                     .withOpacity(0.5),
//                                                 spreadRadius: 2,
//                                                 blurRadius: 7,
//                                                 offset: const Offset(0,
//                                                     3), // changes position of shadow
//                                               ),
//                                             ],
//                                             border: Border.all(
//                                               color: Colors
//                                                   .white, // You can change the color of the border here
//                                               width:
//                                                   4.0, // You can adjust the width of the border here
//                                             ),
//                                           ),
//                                         ),
//                                         const SizedBox(height: 16),
//                                         const Text(
//                                           'Apple (noun)',
//                                           style: TextStyle(
//                                             fontWeight: FontWeight.bold,
//                                             fontSize: 18,
//                                           ),
//                                         ),
//                                         const SizedBox(height: 8),
//                                         const Text(
//                                           'They\'re rich in fiber and antioxidants. Eating them is linked to a lower chance of getting many chronic conditions, including diabetes, heart disease, and cancer. Apples may also promote weight loss and improve gut and brain health.',
//                                           style: TextStyle(
//                                             fontSize: 16,
//                                           ),
//                                           textAlign: TextAlign.justify,
//                                         ),
//                                         const SizedBox(height: 16),
//                                         Row(
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.spaceAround,
//                                           children: [
//                                             ElevatedButton(
//                                               onPressed: () {
//                                                 // Handle the action for the Listen button
//                                                 _speak(
//                                                     'Apple (noun) They\'re rich in fiber and antioxidants. Eating them is linked to a lower chance of getting many chronic conditions, including diabetes, heart disease, and cancer. Apples may also promote weight loss and improve gut and brain health.');
//                                               },
//                                               style: ElevatedButton.styleFrom(
//                                                 backgroundColor:
//                                                     const Color.fromARGB(
//                                                         255, 236, 24, 155),
//                                               ),
//                                               child: Padding(
//                                                 padding:
//                                                     const EdgeInsets.all(5.0),
//                                                 child: Row(
//                                                   mainAxisSize:
//                                                       MainAxisSize.min,
//                                                   children: [
//                                                     Icon(
//                                                       isPlaying
//                                                           ? Icons
//                                                               .pause_circle_outline
//                                                           : Icons
//                                                               .play_circle_outline,
//                                                       color: Colors.white,
//                                                     ),
//                                                     const SizedBox(width: 8.0),
//                                                     const Text('Listen',
//                                                         style: TextStyle(
//                                                             color:
//                                                                 Colors.white)),
//                                                   ],
//                                                 ),
//                                               ),
//                                             ),
//                                             ElevatedButton(
//                                               onPressed: () {
//                                                 // Handle the action for the Run Slideshow button
//                                                 // Add your logic for running the slideshow here
//                                                 // Navigator.of(context)
//                                                 //     .pop();
//                                                 // // Close the dialog
//                                               },
//                                               style: ElevatedButton.styleFrom(
//                                                 backgroundColor:
//                                                     const Color.fromARGB(
//                                                         255, 3, 85, 161),
//                                               ),
//                                               child: const Padding(
//                                                 padding: EdgeInsets.all(5.0),
//                                                 child: Row(
//                                                   mainAxisSize:
//                                                       MainAxisSize.min,
//                                                   children: [
//                                                     Icon(Icons.movie_creation,
//                                                         color: Colors.white),
//                                                     SizedBox(width: 8.0),
//                                                     Text('Slideshow',
//                                                         style: TextStyle(
//                                                             color:
//                                                                 Colors.white)),
//                                                   ],
//                                                 ),
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                       ],
//                                     ),
//                                   );
//                                 },
//                               );
//                             },
//                             child: Container(
//                               width: 140,
//                               height: 140,
//                               decoration: BoxDecoration(
//                                 shape: BoxShape.circle,
//                                 border: Border.all(
//                                   color: const Color(
//                                       0xFF048664), // Set the border color
//                                   width: 4.0, // Set the border width
//                                 ),
//                                 image: const DecorationImage(
//                                   fit: BoxFit.cover,
//                                   image: AssetImage(
//                                       'img/apple.jpg'), // Replace with your image path
//                                 ),
//                               ),
//                             ),
//                           ),
//                           const SizedBox(height: 2),
//                           Container(
//                             decoration: BoxDecoration(
//                               color: const Color(
//                                   0xFF048664), // Set the background color
//                               borderRadius: BorderRadius.circular(
//                                   8.0), // Set border radius as needed
//                             ),
//                             padding: const EdgeInsets.all(
//                                 8.0), // Add padding to the text
//                             child: const Text(
//                               'Apple',
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 18,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),

//                       const SizedBox(
//                           width: 29), // Add spacing between the images
//                       GestureDetector(
//                         onTap: () {
//                           // Show a dialog with the image in a larger size
//                           showDialog(
//                             context: context,
//                             builder: (BuildContext context) {
//                               return AlertDialog(
//                                 content: Column(
//                                   mainAxisSize: MainAxisSize.min,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Align(
//                                       alignment: Alignment.topRight,
//                                       child: SizedBox(
//                                         width: 35,
//                                         height: 35,
//                                         child: Container(
//                                           decoration: const BoxDecoration(
//                                             color: Colors.red,
//                                             shape: BoxShape.circle,
//                                           ),
//                                           child: Center(
//                                             child: IconButton(
//                                               icon: const Icon(
//                                                 Icons.close,
//                                                 color: Colors.white,
//                                                 size: 20,
//                                               ),
//                                               onPressed: () {
//                                                 _stop();
//                                                 Navigator.of(context).pop();
//                                               },
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                     const SizedBox(height: 10),
//                                     Container(
//                                       width: 300,
//                                       height: 200,
//                                       decoration: BoxDecoration(
//                                         image: const DecorationImage(
//                                           fit: BoxFit.fill,
//                                           image: AssetImage(
//                                               'img/fresh-mango-fruits.jpg'),
//                                         ),
//                                         boxShadow: [
//                                           BoxShadow(
//                                             color: Colors.grey.withOpacity(0.5),
//                                             spreadRadius: 2,
//                                             blurRadius: 7,
//                                             offset: const Offset(0,
//                                                 3), // changes position of shadow
//                                           ),
//                                         ],
//                                         border: Border.all(
//                                           color: Colors
//                                               .white, // You can change the color of the border here
//                                           width:
//                                               4.0, // You can adjust the width of the border here
//                                         ),
//                                       ),
//                                     ),

//                                     const SizedBox(height: 16), // Add spacing
//                                     const Text(
//                                       'Mango (noun)', // Replace with your heading
//                                       style: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 18,
//                                       ),
//                                     ),
//                                     const SizedBox(height: 8), // Add spacing
//                                     const Text(
//                                       '''Mango is a delicious and juicy fruit that is rich in vitamins, minerals, and antioxidants. It is known for its sweet and tropical flavor and is a favorite in many cuisines around the world.''', // Replace with your content
//                                       style: TextStyle(
//                                         fontSize: 16,
//                                       ),
//                                       textAlign: TextAlign.justify,
//                                     ),
//                                     const SizedBox(height: 16), // Add spacing
//                                     Row(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.spaceAround,
//                                       children: [
//                                         ElevatedButton(
//                                           onPressed: () {
//                                             // Handle the action for the Listen button
//                                             _speak(
//                                                 'Mango (noun) Mango is a delicious and juicy fruit that is rich in vitamins, minerals, and antioxidants. It is known for its sweet and tropical flavor and is a favorite in many cuisines around the world.');
//                                           },
//                                           style: ElevatedButton.styleFrom(
//                                             backgroundColor:
//                                                 const Color.fromARGB(
//                                                     255, 236, 24, 155),
//                                           ),
//                                           child: Padding(
//                                             padding: const EdgeInsets.all(5.0),
//                                             child: Row(
//                                               mainAxisSize: MainAxisSize.min,
//                                               children: [
//                                                 Icon(
//                                                   isPlaying
//                                                       ? Icons
//                                                           .pause_circle_outline
//                                                       : Icons
//                                                           .play_circle_outline,
//                                                   color: Colors.white,
//                                                 ),
//                                                 const SizedBox(width: 8.0),
//                                                 const Text('Listen',
//                                                     style: TextStyle(
//                                                         color: Colors.white)),
//                                               ],
//                                             ),
//                                           ),
//                                         ),
//                                         ElevatedButton(
//                                           onPressed: () {
//                                             // Handle the action for the Run Slideshow button
//                                             // Add your logic for running the slideshow here
//                                             Navigator.of(context)
//                                                 .pop(); // Close the dialog
//                                           },
//                                           style: ElevatedButton.styleFrom(
//                                             backgroundColor:
//                                                 const Color.fromARGB(
//                                                     255, 3, 85, 161),
//                                           ),
//                                           child: const Padding(
//                                             padding: EdgeInsets.all(5.0),
//                                             child: Row(
//                                               mainAxisSize: MainAxisSize.min,
//                                               children: [
//                                                 Icon(Icons.movie_creation,
//                                                     color: Colors.white),
//                                                 SizedBox(width: 8.0),
//                                                 Text('Slideshow',
//                                                     style: TextStyle(
//                                                         color: Colors.white)),
//                                               ],
//                                             ),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                               );
//                             },
//                           );
//                         },
//                         child: Column(
//                           children: [
//                             Container(
//                               width: 140,
//                               height: 140,
//                               decoration: BoxDecoration(
//                                 shape: BoxShape.circle,
//                                 border: Border.all(
//                                   color: const Color(
//                                       0xFFF0AC13), // Set the border color
//                                   width: 4.0, // Set the border width
//                                 ),
//                                 image: const DecorationImage(
//                                   fit: BoxFit.cover,
//                                   image: AssetImage(
//                                       'img/fresh-mango-fruits.jpg'), // Replace with your image path
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(height: 2),
//                             Container(
//                               decoration: BoxDecoration(
//                                 color: const Color(
//                                     0xFF048664), // Set the background color
//                                 borderRadius: BorderRadius.circular(
//                                     8.0), // Set border radius as needed
//                               ),
//                               padding: const EdgeInsets.all(
//                                   8.0), // Add padding to the text
//                               child: const Text(
//                                 'Mango',
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 18,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(height: 20), // Add spacing between rows
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       GestureDetector(
//                         onTap: () {
//                           // Show a dialog with the image in a larger size
//                           showDialog(
//                             context: context,
//                             builder: (BuildContext context) {
//                               return AlertDialog(
//                                 content: Column(
//                                   mainAxisSize: MainAxisSize.min,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Align(
//                                       alignment: Alignment.topRight,
//                                       child: SizedBox(
//                                         width: 35,
//                                         height: 35,
//                                         child: Container(
//                                           decoration: const BoxDecoration(
//                                             color: Colors.red,
//                                             shape: BoxShape.circle,
//                                           ),
//                                           child: Center(
//                                             child: IconButton(
//                                               icon: const Icon(
//                                                 Icons.close,
//                                                 color: Colors.white,
//                                                 size: 20,
//                                               ),
//                                               onPressed: () {
//                                                 _stop();
//                                                 Navigator.of(context).pop();
//                                               },
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                     const SizedBox(height: 10),
//                                     Container(
//                                       width: 300,
//                                       height: 200,
//                                       decoration: BoxDecoration(
//                                         image: const DecorationImage(
//                                           fit: BoxFit.fill,
//                                           image: AssetImage(
//                                               'img/natural-fresh-orange-fruits-433.jpg'),
//                                         ),
//                                         boxShadow: [
//                                           BoxShadow(
//                                             color: Colors.grey.withOpacity(0.5),
//                                             spreadRadius: 2,
//                                             blurRadius: 7,
//                                             offset: const Offset(0,
//                                                 3), // changes position of shadow
//                                           ),
//                                         ],
//                                         border: Border.all(
//                                           color: Colors
//                                               .white, // You can change the color of the border here
//                                           width:
//                                               4.0, // You can adjust the width of the border here
//                                         ),
//                                       ),
//                                     ),
//                                     const SizedBox(height: 16),
//                                     const SizedBox(height: 16), // Add spacing
//                                     const Text(
//                                       'Orange (noun)', // Replace with your heading
//                                       style: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 18,
//                                       ),
//                                     ),
//                                     const SizedBox(height: 8), // Add spacing
//                                     const Text(
//                                       '''Oranges are a great source of vitamin C, fiber, and antioxidants. They can help boost your immune system, improve skin health, and aid in digestion. Including oranges in your diet can have numerous health benefits.''', // Replace with your content
//                                       style: TextStyle(
//                                         fontSize: 16,
//                                       ),
//                                       textAlign: TextAlign.justify,
//                                     ),
//                                     const SizedBox(height: 16), // Add spacing
//                                     Row(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.spaceAround,
//                                       children: [
//                                         ElevatedButton(
//                                           onPressed: () {
//                                             // Handle the action for the Listen button
//                                             _speak(
//                                                 'Orange (noun) Oranges are a great source of vitamin C, fiber, and antioxidants. They can help boost your immune system, improve skin health, and aid in digestion. Including oranges in your diet can have numerous health benefits.');
//                                           },
//                                           style: ElevatedButton.styleFrom(
//                                             backgroundColor:
//                                                 const Color.fromARGB(
//                                                     255, 236, 24, 155),
//                                           ),
//                                           child: Padding(
//                                             padding: const EdgeInsets.all(5.0),
//                                             child: Row(
//                                               mainAxisSize: MainAxisSize.min,
//                                               children: [
//                                                 Icon(
//                                                   isPlaying
//                                                       ? Icons
//                                                           .pause_circle_outline
//                                                       : Icons
//                                                           .play_circle_outline,
//                                                   color: Colors.white,
//                                                 ),
//                                                 const SizedBox(width: 8.0),
//                                                 const Text('Listen',
//                                                     style: TextStyle(
//                                                         color: Colors.white)),
//                                               ],
//                                             ),
//                                           ),
//                                         ),
//                                         ElevatedButton(
//                                           onPressed: () {
//                                             // Handle the action for the Run Slideshow button
//                                             // Add your logic for running the slideshow here
//                                             Navigator.of(context)
//                                                 .pop(); // Close the dialog
//                                           },
//                                           style: ElevatedButton.styleFrom(
//                                             backgroundColor:
//                                                 const Color.fromARGB(
//                                                     255, 3, 85, 161),
//                                           ),
//                                           child: const Padding(
//                                             padding: EdgeInsets.all(5.0),
//                                             child: Row(
//                                               mainAxisSize: MainAxisSize.min,
//                                               children: [
//                                                 Icon(Icons.movie_creation,
//                                                     color: Colors.white),
//                                                 SizedBox(width: 8.0),
//                                                 Text('Slideshow',
//                                                     style: TextStyle(
//                                                         color: Colors.white)),
//                                               ],
//                                             ),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                               );
//                             },
//                           );
//                         },
//                         child: Column(
//                           children: [
//                             Container(
//                               width: 140,
//                               height: 140,
//                               decoration: BoxDecoration(
//                                 shape: BoxShape.circle,
//                                 border: Border.all(
//                                   color: const Color(
//                                       0xFF8F0527), // Set the border color
//                                   width: 4.0, // Set the border width
//                                 ),
//                                 image: const DecorationImage(
//                                   fit: BoxFit.cover,
//                                   image: AssetImage(
//                                       'img/natural-fresh-orange-fruits-433.jpg'), // Replace with your image path
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(height: 2),
//                             Container(
//                               decoration: BoxDecoration(
//                                 color: const Color(
//                                     0xFF048664), // Set the background color
//                                 borderRadius: BorderRadius.circular(
//                                     8.0), // Set border radius as needed
//                               ),
//                               padding: const EdgeInsets.all(
//                                   8.0), // Add padding to the text
//                               child: const Text(
//                                 'Orange',
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 18,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),

//                       const SizedBox(
//                           width: 29), // Add spacing between the images
//                       GestureDetector(
//                         onTap: () {
//                           // Show a dialog with the image in a larger size
//                           showDialog(
//                             context: context,
//                             builder: (BuildContext context) {
//                               return AlertDialog(
//                                 content: Column(
//                                   mainAxisSize: MainAxisSize.min,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Align(
//                                       alignment: Alignment.topRight,
//                                       child: SizedBox(
//                                         width: 35,
//                                         height: 35,
//                                         child: Container(
//                                           decoration: const BoxDecoration(
//                                             color: Colors.red,
//                                             shape: BoxShape.circle,
//                                           ),
//                                           child: Center(
//                                             child: IconButton(
//                                               icon: const Icon(
//                                                 Icons.close,
//                                                 color: Colors.white,
//                                                 size: 20,
//                                               ),
//                                               onPressed: () {
//                                                 _stop();
//                                                 Navigator.of(context).pop();
//                                               },
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                     const SizedBox(height: 10),
//                                     Container(
//                                       width: 300,
//                                       height: 200,
//                                       decoration: BoxDecoration(
//                                         image: const DecorationImage(
//                                           fit: BoxFit.fill,
//                                           image: AssetImage(
//                                               'img/Fresh-Green-Grapes.jpg'),
//                                         ),
//                                         boxShadow: [
//                                           BoxShadow(
//                                             color: Colors.grey.withOpacity(0.5),
//                                             spreadRadius: 2,
//                                             blurRadius: 7,
//                                             offset: const Offset(0,
//                                                 3), // changes position of shadow
//                                           ),
//                                         ],
//                                         border: Border.all(
//                                           color: Colors
//                                               .white, // You can change the color of the border here
//                                           width:
//                                               4.0, // You can adjust the width of the border here
//                                         ),
//                                       ),
//                                     ),
//                                     const SizedBox(height: 16),
//                                     const SizedBox(height: 16), // Add spacing
//                                     const Text(
//                                       'Green Grapes (noun)', // Replace with your heading
//                                       style: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 18,
//                                       ),
//                                     ),
//                                     const SizedBox(height: 8), // Add spacing
//                                     const Text(
//                                       '''Green grapes are a delicious and healthy snack. They are rich in vitamins and antioxidants. Regular consumption of green grapes may help improve heart health and provide other health benefits.''', // Replace with your content
//                                       style: TextStyle(
//                                         fontSize: 16,
//                                       ),
//                                       textAlign: TextAlign.justify,
//                                     ),
//                                     const SizedBox(height: 16), // Add spacing
//                                     Row(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.spaceAround,
//                                       children: [
//                                         ElevatedButton(
//                                           onPressed: () {
//                                             // Handle the action for the Listen button
//                                             _speak(
//                                                 'Green Grapes (noun) Green grapes are a delicious and healthy snack. They are rich in vitamins and antioxidants. Regular consumption of green grapes may help improve heart health and provide other health benefits.');
//                                           },
//                                           style: ElevatedButton.styleFrom(
//                                             backgroundColor:
//                                                 const Color.fromARGB(
//                                                     255, 236, 24, 155),
//                                           ),
//                                           child: Padding(
//                                             padding: const EdgeInsets.all(5.0),
//                                             child: Row(
//                                               mainAxisSize: MainAxisSize.min,
//                                               children: [
//                                                 Icon(
//                                                   isPlaying
//                                                       ? Icons
//                                                           .pause_circle_outline
//                                                       : Icons
//                                                           .play_circle_outline,
//                                                   color: Colors.white,
//                                                 ),
//                                                 const SizedBox(width: 8.0),
//                                                 const Text('Listen',
//                                                     style: TextStyle(
//                                                         color: Colors.white)),
//                                               ],
//                                             ),
//                                           ),
//                                         ),
//                                         ElevatedButton(
//                                           onPressed: () {
//                                             // Handle the action for the Run Slideshow button
//                                             // Add your logic for running the slideshow here
//                                             Navigator.of(context)
//                                                 .pop(); // Close the dialog
//                                           },
//                                           style: ElevatedButton.styleFrom(
//                                             backgroundColor:
//                                                 const Color.fromARGB(
//                                                     255, 3, 85, 161),
//                                           ),
//                                           child: const Padding(
//                                             padding: EdgeInsets.all(5.0),
//                                             child: Row(
//                                               mainAxisSize: MainAxisSize.min,
//                                               children: [
//                                                 Icon(Icons.movie_creation,
//                                                     color: Colors.white),
//                                                 SizedBox(width: 8.0),
//                                                 Text('Slideshow',
//                                                     style: TextStyle(
//                                                         color: Colors.white)),
//                                               ],
//                                             ),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                               );
//                             },
//                           );
//                         },
//                         child: Column(
//                           children: [
//                             Container(
//                               width: 140,
//                               height: 140,
//                               decoration: BoxDecoration(
//                                 shape: BoxShape.circle,
//                                 border: Border.all(
//                                   color: const Color(
//                                       0xFF361E52), // Set the border color
//                                   width: 4.0, // Set the border width
//                                 ),
//                                 image: const DecorationImage(
//                                   fit: BoxFit.cover,
//                                   image: AssetImage(
//                                       'img/Fresh-Green-Grapes.jpg'), // Replace with your image path
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(height: 2),
//                             Container(
//                               decoration: BoxDecoration(
//                                 color: const Color(
//                                     0xFF048664), // Set the background color
//                                 borderRadius: BorderRadius.circular(
//                                     8.0), // Set border radius as needed
//                               ),
//                               padding: const EdgeInsets.all(
//                                   8.0), // Add padding to the text
//                               child: const Text(
//                                 'Green Grapes',
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 18,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(height: 20), // Add spacing between rows
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       GestureDetector(
//                         onTap: () {
//                           // Show a dialog with the image in a larger size
//                           showDialog(
//                             context: context,
//                             builder: (BuildContext context) {
//                               return AlertDialog(
//                                 content: Column(
//                                   mainAxisSize: MainAxisSize.min,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Align(
//                                       alignment: Alignment.topRight,
//                                       child: SizedBox(
//                                         width: 35,
//                                         height: 35,
//                                         child: Container(
//                                           decoration: const BoxDecoration(
//                                             color: Colors.red,
//                                             shape: BoxShape.circle,
//                                           ),
//                                           child: Center(
//                                             child: IconButton(
//                                               icon: const Icon(
//                                                 Icons.close,
//                                                 color: Colors.white,
//                                                 size: 20,
//                                               ),
//                                               onPressed: () {
//                                                 _stop();
//                                                 Navigator.of(context).pop();
//                                               },
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                     const SizedBox(height: 10),
//                                     Container(
//                                       width: 300,
//                                       height: 200,
//                                       decoration: BoxDecoration(
//                                         image: const DecorationImage(
//                                           image: AssetImage('img/papaya.jpg'),
//                                         ),
//                                         boxShadow: [
//                                           BoxShadow(
//                                             color: Colors.grey.withOpacity(0.5),
//                                             spreadRadius: 2,
//                                             blurRadius: 7,
//                                             offset: const Offset(0,
//                                                 3), // changes position of shadow
//                                           ),
//                                         ],
//                                         border: Border.all(
//                                           color: Colors
//                                               .white, // You can change the color of the border here
//                                           width:
//                                               4.0, // You can adjust the width of the border here
//                                         ),
//                                       ),
//                                     ),
//                                     const SizedBox(height: 16),
//                                     const SizedBox(height: 16), // Add spacing
//                                     const Text(
//                                       'Papaya (noun)', // Replace with your heading
//                                       style: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 18,
//                                       ),
//                                     ),
//                                     const SizedBox(height: 8), // Add spacing
//                                     const Text(
//                                       '''Papaya is a tropical fruit known for its sweet and vibrant orange flesh. It is rich in vitamins, minerals, and dietary fiber. Papaya can help improve digestion and promote skin health.''', // Replace with your content
//                                       style: TextStyle(
//                                         fontSize: 16,
//                                       ),
//                                       textAlign: TextAlign.justify,
//                                     ),
//                                     const SizedBox(height: 16), // Add spacing
//                                     Row(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.spaceAround,
//                                       children: [
//                                         ElevatedButton(
//                                           onPressed: () {
//                                             // Handle the action for the Listen button
//                                             _speak(
//                                                 'Papaya (noun) Papaya is a tropical fruit known for its sweet and vibrant orange flesh. It is rich in vitamins, minerals, and dietary fiber. Papaya can help improve digestion and promote skin health.');
//                                           },
//                                           style: ElevatedButton.styleFrom(
//                                             backgroundColor:
//                                                 const Color.fromARGB(
//                                                     255, 236, 24, 155),
//                                           ),
//                                           child: Padding(
//                                             padding: const EdgeInsets.all(5.0),
//                                             child: Row(
//                                               mainAxisSize: MainAxisSize.min,
//                                               children: [
//                                                 Icon(
//                                                   isPlaying
//                                                       ? Icons
//                                                           .pause_circle_outline
//                                                       : Icons
//                                                           .play_circle_outline,
//                                                   color: Colors.white,
//                                                 ),
//                                                 const SizedBox(width: 8.0),
//                                                 const Text('Listen',
//                                                     style: TextStyle(
//                                                         color: Colors.white)),
//                                               ],
//                                             ),
//                                           ),
//                                         ),
//                                         ElevatedButton(
//                                           onPressed: () {
//                                             // Handle the action for the Run Slideshow button
//                                             // Add your logic for running the slideshow here
//                                             Navigator.of(context)
//                                                 .pop(); // Close the dialog
//                                           },
//                                           style: ElevatedButton.styleFrom(
//                                             backgroundColor:
//                                                 const Color.fromARGB(
//                                                     255, 3, 85, 161),
//                                           ),
//                                           child: const Padding(
//                                             padding: EdgeInsets.all(5.0),
//                                             child: Row(
//                                               mainAxisSize: MainAxisSize.min,
//                                               children: [
//                                                 Icon(Icons.movie_creation,
//                                                     color: Colors.white),
//                                                 SizedBox(width: 8.0),
//                                                 Text('Slideshow',
//                                                     style: TextStyle(
//                                                         color: Colors.white)),
//                                               ],
//                                             ),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                               );
//                             },
//                           );
//                         },
//                         child: Column(
//                           children: [
//                             Container(
//                               width: 140,
//                               height: 140,
//                               decoration: BoxDecoration(
//                                 shape: BoxShape.circle,
//                                 border: Border.all(
//                                   color: const Color(
//                                       0xFF1AA3AD), // Set the border color
//                                   width: 4.0, // Set the border width
//                                 ),
//                                 image: const DecorationImage(
//                                   fit: BoxFit.cover,
//                                   image: AssetImage(
//                                       'img/papaya.jpg'), // Replace with your image path
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(height: 2),
//                             Container(
//                               decoration: BoxDecoration(
//                                 color: const Color(
//                                     0xFF048664), // Set the background color
//                                 borderRadius: BorderRadius.circular(
//                                     8.0), // Set border radius as needed
//                               ),
//                               padding: const EdgeInsets.all(
//                                   8.0), // Add padding to the text
//                               child: const Text(
//                                 'Papaya',
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 18,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),

//                       const SizedBox(
//                           width: 29), // Add spacing between the images
//                       GestureDetector(
//                         onTap: () {
//                           // Show a dialog with the image in a larger size
//                           showDialog(
//                             context: context,
//                             builder: (BuildContext context) {
//                               return AlertDialog(
//                                 content: Column(
//                                   mainAxisSize: MainAxisSize.min,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Align(
//                                       alignment: Alignment.topRight,
//                                       child: SizedBox(
//                                         width: 35,
//                                         height: 35,
//                                         child: Container(
//                                           decoration: const BoxDecoration(
//                                             color: Colors.red,
//                                             shape: BoxShape.circle,
//                                           ),
//                                           child: Center(
//                                             child: IconButton(
//                                               icon: const Icon(
//                                                 Icons.close,
//                                                 color: Colors.white,
//                                                 size: 20,
//                                               ),
//                                               onPressed: () {
//                                                 _stop();
//                                                 Navigator.of(context).pop();
//                                               },
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                     const SizedBox(height: 10),
//                                     Container(
//                                       width: 300,
//                                       height: 200,
//                                       decoration: BoxDecoration(
//                                         image: const DecorationImage(
//                                           image:
//                                               AssetImage('img/pineapple.webp'),
//                                         ),
//                                         boxShadow: [
//                                           BoxShadow(
//                                             color: Colors.grey.withOpacity(0.5),
//                                             spreadRadius: 2,
//                                             blurRadius: 7,
//                                             offset: const Offset(0,
//                                                 3), // changes position of shadow
//                                           ),
//                                         ],
//                                         border: Border.all(
//                                           color: Colors
//                                               .white, // You can change the color of the border here
//                                           width:
//                                               4.0, // You can adjust the width of the border here
//                                         ),
//                                       ),
//                                     ),
//                                     const SizedBox(height: 16),
//                                     const SizedBox(height: 16),
//                                     const SizedBox(height: 16), // Add spacing
//                                     const Text(
//                                       'Pineapple (noun)', // Replace with your heading
//                                       style: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 18,
//                                       ),
//                                     ),
//                                     const SizedBox(height: 8), // Add spacing
//                                     const Text(
//                                       '''Pineapple is a tropical fruit known for its sweet and tangy flavor. It is packed with vitamins, minerals, and antioxidants. Pineapple can aid digestion and boost the immune system.''', // Replace with your content
//                                       style: TextStyle(
//                                         fontSize: 16,
//                                       ),
//                                       textAlign: TextAlign.justify,
//                                     ),
//                                     const SizedBox(height: 16), // Add spacing
//                                     Row(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.spaceAround,
//                                       children: [
//                                         ElevatedButton(
//                                           onPressed: () {
//                                             // Handle the action for the Listen button
//                                             _speak(
//                                                 'Pineapple (noun) Pineapple is a tropical fruit known for its sweet and tangy flavor. It is packed with vitamins, minerals, and antioxidants. Pineapple can aid digestion and boost the immune system.');
//                                           },
//                                           style: ElevatedButton.styleFrom(
//                                             backgroundColor:
//                                                 const Color.fromARGB(
//                                                     255, 236, 24, 155),
//                                           ),
//                                           child: Padding(
//                                             padding: const EdgeInsets.all(5.0),
//                                             child: Row(
//                                               mainAxisSize: MainAxisSize.min,
//                                               children: [
//                                                 Icon(
//                                                   isPlaying
//                                                       ? Icons
//                                                           .pause_circle_outline
//                                                       : Icons
//                                                           .play_circle_outline,
//                                                   color: Colors.white,
//                                                 ),
//                                                 const SizedBox(width: 8.0),
//                                                 const Text('Listen',
//                                                     style: TextStyle(
//                                                         color: Colors.white)),
//                                               ],
//                                             ),
//                                           ),
//                                         ),
//                                         ElevatedButton(
//                                           onPressed: () {
//                                             // Handle the action for the Run Slideshow button
//                                             // Add your logic for running the slideshow here
//                                             Navigator.of(context)
//                                                 .pop(); // Close the dialog
//                                           },
//                                           style: ElevatedButton.styleFrom(
//                                             backgroundColor:
//                                                 const Color.fromARGB(
//                                                     255, 3, 85, 161),
//                                           ),
//                                           child: const Padding(
//                                             padding: EdgeInsets.all(5.0),
//                                             child: Row(
//                                               mainAxisSize: MainAxisSize.min,
//                                               children: [
//                                                 Icon(Icons.movie_creation,
//                                                     color: Colors.white),
//                                                 SizedBox(width: 8.0),
//                                                 Text('Slideshow',
//                                                     style: TextStyle(
//                                                         color: Colors.white)),
//                                               ],
//                                             ),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                               );
//                             },
//                           );
//                         },
//                         child: Column(
//                           children: [
//                             Container(
//                               width: 140,
//                               height: 140,
//                               decoration: BoxDecoration(
//                                 shape: BoxShape.circle,
//                                 border: Border.all(
//                                   color: const Color(
//                                       0xFF1B4C93), // Set the border color
//                                   width: 4.0, // Set the border width
//                                 ),
//                                 image: const DecorationImage(
//                                   //fit: BoxFit.fill,
//                                   fit: BoxFit.cover,
//                                   image: AssetImage(
//                                       'img/pineapple.webp'), // Replace with your image path
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(height: 2),
//                             Container(
//                               decoration: BoxDecoration(
//                                 color: const Color(
//                                     0xFF048664), // Set the background color
//                                 borderRadius: BorderRadius.circular(
//                                     8.0), // Set border radius as needed
//                               ),
//                               padding: const EdgeInsets.all(
//                                   8.0), // Add padding to the text
//                               child: const Text(
//                                 'Pineapple',
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 18,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(height: 20), // Add spacing between rows
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       GestureDetector(
//                         onTap: () {
//                           // Show a dialog with the image in a larger size
//                           showDialog(
//                             context: context,
//                             builder: (BuildContext context) {
//                               return AlertDialog(
//                                 content: Column(
//                                   mainAxisSize: MainAxisSize.min,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Align(
//                                       alignment: Alignment.topRight,
//                                       child: SizedBox(
//                                         width: 35,
//                                         height: 35,
//                                         child: Container(
//                                           decoration: const BoxDecoration(
//                                             color: Colors.red,
//                                             shape: BoxShape.circle,
//                                           ),
//                                           child: Center(
//                                             child: IconButton(
//                                               icon: const Icon(
//                                                 Icons.close,
//                                                 color: Colors.white,
//                                                 size: 20,
//                                               ),
//                                               onPressed: () {
//                                                 _stop();
//                                                 Navigator.of(context).pop();
//                                               },
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                     const SizedBox(height: 10),
//                                     Container(
//                                       width: 300,
//                                       height: 200,
//                                       decoration: BoxDecoration(
//                                         image: const DecorationImage(
//                                           fit: BoxFit.fill,
//                                           image: AssetImage(
//                                               'img/51ebZJ+DR4L._AC_UF1000,1000_QL80_.jpg'),
//                                         ),
//                                         boxShadow: [
//                                           BoxShadow(
//                                             color: Colors.grey.withOpacity(0.5),
//                                             spreadRadius: 2,
//                                             blurRadius: 7,
//                                             offset: const Offset(0,
//                                                 3), // changes position of shadow
//                                           ),
//                                         ],
//                                         border: Border.all(
//                                           color: Colors
//                                               .white, // You can change the color of the border here
//                                           width:
//                                               4.0, // You can adjust the width of the border here
//                                         ),
//                                       ),
//                                     ),
//                                     const SizedBox(height: 16),
//                                     const SizedBox(height: 16), // Add spacing
//                                     const Text(
//                                       'Banana (noun)', // Replace with your heading
//                                       style: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 18,
//                                       ),
//                                     ),
//                                     const SizedBox(height: 8), // Add spacing
//                                     const Text(
//                                       '''Banana is a tropical fruit known for its natural sweetness. It is a good source of potassium, vitamins, and dietary fiber. Bananas can provide energy and support heart health.''', // Replace with your content
//                                       style: TextStyle(
//                                         fontSize: 16,
//                                       ),
//                                       textAlign: TextAlign.justify,
//                                     ),
//                                     const SizedBox(height: 16), // Add spacing
//                                     Row(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.spaceAround,
//                                       children: [
//                                         ElevatedButton(
//                                           onPressed: () {
//                                             // Handle the action for the Listen button
//                                             _speak(
//                                                 'Banana (noun) Banana is a tropical fruit known for its natural sweetness. It is a good source of potassium, vitamins, and dietary fiber. Bananas can provide energy and support heart health.');
//                                           },
//                                           style: ElevatedButton.styleFrom(
//                                             backgroundColor:
//                                                 const Color.fromARGB(
//                                                     255, 236, 24, 155),
//                                           ),
//                                           child: Padding(
//                                             padding: const EdgeInsets.all(5.0),
//                                             child: Row(
//                                               mainAxisSize: MainAxisSize.min,
//                                               children: [
//                                                 Icon(
//                                                   isPlaying
//                                                       ? Icons
//                                                           .pause_circle_outline
//                                                       : Icons
//                                                           .play_circle_outline,
//                                                   color: Colors.white,
//                                                 ),
//                                                 const SizedBox(width: 8.0),
//                                                 const Text('Listen',
//                                                     style: TextStyle(
//                                                         color: Colors.white)),
//                                               ],
//                                             ),
//                                           ),
//                                         ),
//                                         ElevatedButton(
//                                           onPressed: () {
//                                             // Handle the action for the Run Slideshow button
//                                             // Add your logic for running the slideshow here
//                                             Navigator.of(context)
//                                                 .pop(); // Close the dialog
//                                           },
//                                           style: ElevatedButton.styleFrom(
//                                             backgroundColor:
//                                                 const Color.fromARGB(
//                                                     255, 3, 85, 161),
//                                           ),
//                                           child: const Padding(
//                                             padding: EdgeInsets.all(5.0),
//                                             child: Row(
//                                               mainAxisSize: MainAxisSize.min,
//                                               children: [
//                                                 Icon(Icons.movie_creation,
//                                                     color: Colors.white),
//                                                 SizedBox(width: 8.0),
//                                                 Text('Slideshow',
//                                                     style: TextStyle(
//                                                         color: Colors.white)),
//                                               ],
//                                             ),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                               );
//                             },
//                           );
//                         },
//                         child: Column(
//                           children: [
//                             Container(
//                               width: 140,
//                               height: 140,
//                               decoration: BoxDecoration(
//                                 shape: BoxShape.circle,
//                                 border: Border.all(
//                                   color: const Color(
//                                       0xFF048664), // Set the border color
//                                   width: 4.0, // Set the border width
//                                 ),
//                                 image: const DecorationImage(
//                                   fit: BoxFit.cover,
//                                   image: AssetImage(
//                                       'img/51ebZJ+DR4L._AC_UF1000,1000_QL80_.jpg'), // Replace with your image path
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(height: 2),
//                             Container(
//                               decoration: BoxDecoration(
//                                 color: const Color(
//                                     0xFF048664), // Set the background color
//                                 borderRadius: BorderRadius.circular(
//                                     8.0), // Set border radius as needed
//                               ),
//                               padding: const EdgeInsets.all(
//                                   8.0), // Add padding to the text
//                               child: const Text(
//                                 'Banana',
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 18,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),

//                       const SizedBox(
//                           width: 29), // Add spacing between the images
//                       GestureDetector(
//                         onTap: () {
//                           // Show a dialog with the image in a larger size
//                           showDialog(
//                             context: context,
//                             builder: (BuildContext context) {
//                               return AlertDialog(
//                                 content: Column(
//                                   mainAxisSize: MainAxisSize.min,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Align(
//                                       alignment: Alignment.topRight,
//                                       child: SizedBox(
//                                         width: 35,
//                                         height: 35,
//                                         child: Container(
//                                           decoration: const BoxDecoration(
//                                             color: Colors.red,
//                                             shape: BoxShape.circle,
//                                           ),
//                                           child: Center(
//                                             child: IconButton(
//                                               icon: const Icon(
//                                                 Icons.close,
//                                                 color: Colors.white,
//                                                 size: 20,
//                                               ),
//                                               onPressed: () {
//                                                 _stop();
//                                                 Navigator.of(context).pop();
//                                               },
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                     const SizedBox(height: 10),
//                                     Container(
//                                       width: 300,
//                                       height: 200,
//                                       decoration: BoxDecoration(
//                                         image: const DecorationImage(
//                                           fit: BoxFit.fill,
//                                           image: AssetImage(
//                                               'img/pomegranate-1-istock-612833996-1.jpg'),
//                                         ),
//                                         boxShadow: [
//                                           BoxShadow(
//                                             color: Colors.grey.withOpacity(0.5),
//                                             spreadRadius: 2,
//                                             blurRadius: 7,
//                                             offset: const Offset(0,
//                                                 3), // changes position of shadow
//                                           ),
//                                         ],
//                                         border: Border.all(
//                                           color: Colors
//                                               .white, // You can change the color of the border here
//                                           width:
//                                               4.0, // You can adjust the width of the border here
//                                         ),
//                                       ),
//                                     ),
//                                     const SizedBox(height: 16),
//                                     const SizedBox(height: 16), // Add spacing
//                                     const Text(
//                                       'Pomegranate (noun)', // Replace with your heading
//                                       style: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 18,
//                                       ),
//                                     ),
//                                     const SizedBox(height: 8), // Add spacing
//                                     const Text(
//                                       '''Pomegranate is a delicious and nutritious fruit known for its juicy seeds. It is rich in antioxidants, vitamins, and minerals. Pomegranate may have various health benefits, including improving heart health and reducing inflammation.''', // Replace with your content
//                                       style: TextStyle(
//                                         fontSize: 16,
//                                       ),
//                                       textAlign: TextAlign.justify,
//                                     ),
//                                     const SizedBox(height: 16), // Add spacing
//                                     Row(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.spaceAround,
//                                       children: [
//                                         ElevatedButton(
//                                           onPressed: () {
//                                             // Handle the action for the Listen button
//                                             _speak(
//                                                 'Pomegranate (noun) Pomegranate is a delicious and nutritious fruit known for its juicy seeds. It is rich in antioxidants, vitamins, and minerals. Pomegranate may have various health benefits, including improving heart health and reducing inflammation.');
//                                           },
//                                           style: ElevatedButton.styleFrom(
//                                             backgroundColor:
//                                                 const Color.fromARGB(
//                                                     255, 236, 24, 155),
//                                           ),
//                                           child: Padding(
//                                             padding: const EdgeInsets.all(5.0),
//                                             child: Row(
//                                               mainAxisSize: MainAxisSize.min,
//                                               children: [
//                                                 Icon(
//                                                   isPlaying
//                                                       ? Icons
//                                                           .pause_circle_outline
//                                                       : Icons
//                                                           .play_circle_outline,
//                                                   color: Colors.white,
//                                                 ),
//                                                 const SizedBox(width: 8.0),
//                                                 const Text('Listen',
//                                                     style: TextStyle(
//                                                         color: Colors.white)),
//                                               ],
//                                             ),
//                                           ),
//                                         ),
//                                         ElevatedButton(
//                                           onPressed: () {
//                                             // Handle the action for the Run Slideshow button
//                                             // Add your logic for running the slideshow here
//                                             Navigator.of(context)
//                                                 .pop(); // Close the dialog
//                                           },
//                                           style: ElevatedButton.styleFrom(
//                                             backgroundColor:
//                                                 const Color.fromARGB(
//                                                     255, 3, 85, 161),
//                                           ),
//                                           child: const Padding(
//                                             padding: EdgeInsets.all(5.0),
//                                             child: Row(
//                                               mainAxisSize: MainAxisSize.min,
//                                               children: [
//                                                 Icon(Icons.movie_creation,
//                                                     color: Colors.white),
//                                                 SizedBox(width: 8.0),
//                                                 Text('Slideshow',
//                                                     style: TextStyle(
//                                                         color: Colors.white)),
//                                               ],
//                                             ),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                               );
//                             },
//                           );
//                         },
//                         child: Column(
//                           children: [
//                             Container(
//                               width: 140,
//                               height: 140,
//                               decoration: BoxDecoration(
//                                 shape: BoxShape.circle,
//                                 border: Border.all(
//                                   color: const Color(
//                                       0xFFF0AC13), // Set the border color
//                                   width: 4.0, // Set the border width
//                                 ),
//                                 image: const DecorationImage(
//                                   fit: BoxFit.fill,
//                                   image: AssetImage(
//                                       'img/pomegranate-1-istock-612833996-1.jpg'), // Replace with your image path
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(height: 2),
//                             Container(
//                               decoration: BoxDecoration(
//                                 color: const Color(
//                                     0xFF048664), // Set the background color
//                                 borderRadius: BorderRadius.circular(
//                                     8.0), // Set border radius as needed
//                               ),
//                               padding: const EdgeInsets.all(
//                                   8.0), // Add padding to the text
//                               child: const Text(
//                                 'Pomegranate',
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 18,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(height: 20), // Add spacing between rows
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       GestureDetector(
//                         onTap: () {
//                           // Show a dialog with the image in a larger size
//                           showDialog(
//                             context: context,
//                             builder: (BuildContext context) {
//                               return AlertDialog(
//                                 content: Column(
//                                   mainAxisSize: MainAxisSize.min,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Align(
//                                       alignment: Alignment.topRight,
//                                       child: SizedBox(
//                                         width: 35,
//                                         height: 35,
//                                         child: Container(
//                                           decoration: const BoxDecoration(
//                                             color: Colors.red,
//                                             shape: BoxShape.circle,
//                                           ),
//                                           child: Center(
//                                             child: IconButton(
//                                               icon: const Icon(
//                                                 Icons.close,
//                                                 color: Colors.white,
//                                                 size: 20,
//                                               ),
//                                               onPressed: () {
//                                                 _stop();
//                                                 Navigator.of(context).pop();
//                                               },
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                     const SizedBox(height: 10),
//                                     Container(
//                                       width: 300,
//                                       height: 200,
//                                       decoration: BoxDecoration(
//                                         image: const DecorationImage(
//                                           fit: BoxFit.fill,
//                                           image: AssetImage(
//                                               'img/30000996_12-fresho-cherry.webp'),
//                                         ),
//                                         boxShadow: [
//                                           BoxShadow(
//                                             color: Colors.grey.withOpacity(0.5),
//                                             spreadRadius: 2,
//                                             blurRadius: 7,
//                                             offset: const Offset(0,
//                                                 3), // changes position of shadow
//                                           ),
//                                         ],
//                                         border: Border.all(
//                                           color: Colors
//                                               .white, // You can change the color of the border here
//                                           width:
//                                               4.0, // You can adjust the width of the border here
//                                         ),
//                                       ),
//                                     ),
//                                     const SizedBox(height: 16),
//                                     const SizedBox(height: 16), // Add spacing
//                                     const Text(
//                                       'Cherry (noun)', // Replace with your heading
//                                       style: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 18,
//                                       ),
//                                     ),
//                                     const SizedBox(height: 8), // Add spacing
//                                     const Text(
//                                       '''Cherries are small, round fruits that come in various colors. They are rich in vitamins, minerals, and antioxidants. Cherries may have benefits for heart health, sleep quality, and reducing muscle soreness.''', // Replace with your content
//                                       style: TextStyle(
//                                         fontSize: 16,
//                                       ),
//                                       textAlign: TextAlign.justify,
//                                     ),
//                                     const SizedBox(height: 16), // Add spacing
//                                     Row(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.spaceAround,
//                                       children: [
//                                         ElevatedButton(
//                                           onPressed: () {
//                                             // Handle the action for the Listen button
//                                             _speak(
//                                                 'Cherry (noun)   Cherries are small, round fruits that come in various colors. They are rich in vitamins, minerals, and antioxidants. Cherries may have benefits for heart health, sleep quality, and reducing muscle soreness.');
//                                           },
//                                           style: ElevatedButton.styleFrom(
//                                             backgroundColor:
//                                                 const Color.fromARGB(
//                                                     255, 236, 24, 155),
//                                           ),
//                                           child: Padding(
//                                             padding: const EdgeInsets.all(5.0),
//                                             child: Row(
//                                               mainAxisSize: MainAxisSize.min,
//                                               children: [
//                                                 Icon(
//                                                   isPlaying
//                                                       ? Icons
//                                                           .pause_circle_outline
//                                                       : Icons
//                                                           .play_circle_outline,
//                                                   color: Colors.white,
//                                                 ),
//                                                 const SizedBox(width: 8.0),
//                                                 const Text('Listen',
//                                                     style: TextStyle(
//                                                         color: Colors.white)),
//                                               ],
//                                             ),
//                                           ),
//                                         ),
//                                         ElevatedButton(
//                                           onPressed: () {
//                                             // Handle the action for the Run Slideshow button
//                                             // Add your logic for running the slideshow here
//                                             Navigator.of(context)
//                                                 .pop(); // Close the dialog
//                                           },
//                                           style: ElevatedButton.styleFrom(
//                                             backgroundColor:
//                                                 const Color.fromARGB(
//                                                     255, 3, 85, 161),
//                                           ),
//                                           child: const Padding(
//                                             padding: EdgeInsets.all(5.0),
//                                             child: Row(
//                                               mainAxisSize: MainAxisSize.min,
//                                               children: [
//                                                 Icon(Icons.movie_creation,
//                                                     color: Colors.white),
//                                                 SizedBox(width: 8.0),
//                                                 Text('Slideshow',
//                                                     style: TextStyle(
//                                                         color: Colors.white)),
//                                               ],
//                                             ),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                               );
//                             },
//                           );
//                         },
//                         child: Column(
//                           children: [
//                             Container(
//                               width: 140,
//                               height: 140,
//                               decoration: BoxDecoration(
//                                 shape: BoxShape.circle,
//                                 border: Border.all(
//                                   color: const Color(
//                                       0xFF8F0527), // Set the border color
//                                   width: 4.0, // Set the border width
//                                 ),
//                                 image: const DecorationImage(
//                                   fit: BoxFit.cover,
//                                   image: AssetImage(
//                                       'img/30000996_12-fresho-cherry.webp'), // Replace with your image path
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(height: 2),
//                             Container(
//                               decoration: BoxDecoration(
//                                 color: const Color(
//                                     0xFF048664), // Set the background color
//                                 borderRadius: BorderRadius.circular(
//                                     8.0), // Set border radius as needed
//                               ),
//                               padding: const EdgeInsets.all(
//                                   8.0), // Add padding to the text
//                               child: const Text(
//                                 'Cherry',
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 18,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),

//                       const SizedBox(
//                           width: 29), // Add spacing between the images
//                       GestureDetector(
//                         onTap: () {
//                           // Show a dialog with the image in a larger size
//                           showDialog(
//                             context: context,
//                             builder: (BuildContext context) {
//                               return AlertDialog(
//                                 content: Column(
//                                   mainAxisSize: MainAxisSize.min,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Align(
//                                       alignment: Alignment.topRight,
//                                       child: SizedBox(
//                                         width: 35,
//                                         height: 35,
//                                         child: Container(
//                                           decoration: const BoxDecoration(
//                                             color: Colors.red,
//                                             shape: BoxShape.circle,
//                                           ),
//                                           child: Center(
//                                             child: IconButton(
//                                               icon: const Icon(
//                                                 Icons.close,
//                                                 color: Colors.white,
//                                                 size: 20,
//                                               ),
//                                               onPressed: () {
//                                                 _stop();
//                                                 Navigator.of(context).pop();
//                                               },
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                     const SizedBox(height: 10),
//                                     Container(
//                                       width: 300,
//                                       height: 200,
//                                       decoration: BoxDecoration(
//                                         image: const DecorationImage(
//                                           image: AssetImage(
//                                               'img/whole-and-slices-watermelon.webp'),
//                                         ),
//                                         boxShadow: [
//                                           BoxShadow(
//                                             color: Colors.grey.withOpacity(0.5),
//                                             spreadRadius: 2,
//                                             blurRadius: 7,
//                                             offset: const Offset(0,
//                                                 3), // changes position of shadow
//                                           ),
//                                         ],
//                                         border: Border.all(
//                                           color: Colors
//                                               .white, // You can change the color of the border here
//                                           width:
//                                               4.0, // You can adjust the width of the border here
//                                         ),
//                                       ),
//                                     ),
//                                     const SizedBox(height: 16),
//                                     const SizedBox(height: 16), // Add spacing
//                                     const Text(
//                                       'Watermelon (noun)', // Replace with your heading
//                                       style: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 18,
//                                       ),
//                                     ),
//                                     const SizedBox(height: 8), // Add spacing
//                                     const Text(
//                                       '''Watermelon is a delicious and refreshing fruit that's perfect for staying hydrated during the summer. It's low in calories and contains essential vitamins and minerals. Eating watermelon may also have various health benefits.''', // Replace with your content
//                                       style: TextStyle(
//                                         fontSize: 16,
//                                       ),
//                                       textAlign: TextAlign.justify,
//                                     ),
//                                     const SizedBox(height: 16), // Add spacing
//                                     Row(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.spaceAround,
//                                       children: [
//                                         ElevatedButton(
//                                           onPressed: () {
//                                             // Handle the action for the Listen button
//                                             _speak(
//                                                 'Watermelon (noun)  Watermelon is a delicious and refreshing fruit that\'s perfect for staying hydrated during the summer. It\'s low in calories and contains essential vitamins and minerals. Eating watermelon may also have various health benefits.');
//                                           },
//                                           style: ElevatedButton.styleFrom(
//                                             backgroundColor:
//                                                 const Color.fromARGB(
//                                                     255, 236, 24, 155),
//                                           ),
//                                           child: Padding(
//                                             padding: const EdgeInsets.all(5.0),
//                                             child: Row(
//                                               mainAxisSize: MainAxisSize.min,
//                                               children: [
//                                                 Icon(
//                                                   isPlaying
//                                                       ? Icons
//                                                           .pause_circle_outline
//                                                       : Icons
//                                                           .play_circle_outline,
//                                                   color: Colors.white,
//                                                 ),
//                                                 const SizedBox(width: 8.0),
//                                                 const Text('Listen',
//                                                     style: TextStyle(
//                                                         color: Colors.white)),
//                                               ],
//                                             ),
//                                           ),
//                                         ),
//                                         ElevatedButton(
//                                           onPressed: () {
//                                             // Handle the action for the Run Slideshow button
//                                             // Add your logic for running the slideshow here
//                                             Navigator.of(context)
//                                                 .pop(); // Close the dialog
//                                           },
//                                           style: ElevatedButton.styleFrom(
//                                             backgroundColor:
//                                                 const Color.fromARGB(
//                                                     255, 3, 85, 161),
//                                           ),
//                                           child: const Padding(
//                                             padding: EdgeInsets.all(5.0),
//                                             child: Row(
//                                               mainAxisSize: MainAxisSize.min,
//                                               children: [
//                                                 Icon(Icons.movie_creation,
//                                                     color: Colors.white),
//                                                 SizedBox(width: 8.0),
//                                                 Text('Slideshow',
//                                                     style: TextStyle(
//                                                         color: Colors.white)),
//                                               ],
//                                             ),
//                                           ),
//                                         ),
//                                       ],
//                                     ),

//                                     // Close icon
//                                   ],
//                                 ),
//                                 actions: const [], // Leave this empty to hide the default action buttons
//                               );
//                             },
//                           );
//                         },
//                         child: Column(
//                           children: [
//                             Container(
//                               width: 140,
//                               height: 140,
//                               decoration: BoxDecoration(
//                                 shape: BoxShape.circle,
//                                 border: Border.all(
//                                   color: const Color(
//                                       0xFF361E52), // Set the border color
//                                   width: 4.0, // Set the border width
//                                 ),
//                                 image: const DecorationImage(
//                                   //fit: BoxFit.fill,
//                                   fit: BoxFit.cover,
//                                   image: AssetImage(
//                                       'img/whole-and-slices-watermelon.webp'), // Replace with your image path
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(height: 2),
//                             Container(
//                               decoration: BoxDecoration(
//                                 color: const Color(
//                                     0xFF048664), // Set the background color
//                                 borderRadius: BorderRadius.circular(
//                                     8.0), // Set border radius as needed
//                               ),
//                               padding: const EdgeInsets.all(
//                                   8.0), // Add padding to the text
//                               child: const Text(
//                                 'Watermelon',
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 18,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                   // Add more rows as needed
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


 // ElevatedButton(
              //   onPressed: () {
              //     // Handle the action for the Run Slideshow button
              //     Navigator.of(context).pop(); // Close the dialog
              //   },
              //   child: const Padding(
              //     padding: EdgeInsets.all(5.0),
              //     child: Row(
              //       mainAxisSize: MainAxisSize.min,
              //       children: [
              //         Icon(Icons.movie_creation, color: Colors.white),
              //         SizedBox(width: 8.0),
              //         Text('Slideshow', style: TextStyle(color: Colors.white)),
              //       ],
              //     ),
              //   ),
              // ),
// import 'package:flutter/material.dart';
// import 'package:flutter_tts/flutter_tts.dart';
// import 'dart:async';

// class Fruit {
//   final String title;
//   final String description;
//   final String imagePath;

//   Fruit({
//     required this.title,
//     required this.description,
//     required this.imagePath,
//   });
// }

// void main() => runApp(MyList());

// class MyList extends StatelessWidget {
//   final List<Fruit> fruits = [
//     Fruit(
//       title: 'Apple',
//       description: 'Description for Apple',
//       imagePath: 'assets/apple.jpg',
//     ),
//     Fruit(
//       title: 'Mango',
//       description: 'Description for Mango',
//       imagePath: 'assets/fresh-mango-fruits.jpg',
//     ),
//     Fruit(
//       title: 'Orange',
//       description: 'Description for Orange',
//       imagePath: 'assets/orange.jpg',
//     ),
//     // Add more fruits as needed
//   ];

//   final FlutterTts flutterTts = FlutterTts();

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: FruitListScreen(fruits: fruits, flutterTts: flutterTts),
//     );
//   }
// }

// class FruitListScreen extends StatefulWidget {
//   final List<Fruit> fruits;
//   final FlutterTts flutterTts;

//   FruitListScreen({required this.fruits, required this.flutterTts});

//   @override
//   _FruitListScreenState createState() => _FruitListScreenState();
// }

// class _FruitListScreenState extends State<FruitListScreen> {
//   bool _isSlideshowRunning = false;
//   int _currentIndex = 0;
//   double _speechRate = 0.3;

//   void _setSpeechRate(double rate) {
//     setState(() {
//       _speechRate = rate;
//     });
//   }

//   Future<void> _speak(String text) async {
//     try {
//       await widget.flutterTts.setLanguage("en-IN");
//       await widget.flutterTts.setSpeechRate(_speechRate);
//       await widget.flutterTts.speak(text);
//     } catch (e) {
//       print("Error: $e");
//     }
//   }

//   void _showFruitDetails(BuildContext context, Fruit fruit) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           content: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Image.asset(
//                 fruit.imagePath,
//                 width: 100,
//                 height: 100,
//                 fit: BoxFit.cover,
//               ),
//               const SizedBox(height: 16),
//               Text(
//                 fruit.title,
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 18,
//                 ),
//               ),
//               const SizedBox(height: 8),
//               Text(fruit.description),
//               const SizedBox(height: 16),
//             ],
//           ),
//           actions: [
//             ElevatedButton(
//               onPressed: () {
//                 _speak('${fruit.title} (noun) ${fruit.description}');
//               },
//               child: Text('Play Audio'),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 _startSlideshow();
//                 Navigator.of(context).pop(); // Close the dialog
//               },
//               child: Text('Start Slideshow'),
//             ),
//           ],
//         );
//       },
//     );
//   }

//   void _startSlideshow() {
//     setState(() {
//       _isSlideshowRunning = true;
//     });

//     Timer.periodic(Duration(seconds: 2), (timer) {
//       if (_isSlideshowRunning) {
//         setState(() {
//           _currentIndex++;
//           if (_currentIndex >= widget.fruits.length) {
//             _currentIndex = 0;
//           }
//         });

//         _speak(
//             '${widget.fruits[_currentIndex].title} (noun) ${widget.fruits[_currentIndex].description}');
//       } else {
//         timer.cancel();
//         setState(() {
//           _currentIndex = 0;
//         });
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Fruits App'),
//       ),
//       body: Center(
//         child: Column(
//           children: [
//             Slider(
//               value: _speechRate,
//               min: 0.1,
//               max: 1.0,
//               onChanged: _setSpeechRate,
//               label: 'Speech Rate: $_speechRate',
//             ),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: widget.fruits.length,
//                 itemBuilder: (context, index) {
//                   return GestureDetector(
//                     onTap: () {
//                       _showFruitDetails(context, widget.fruits[index]);
//                     },
//                     child: Container(
//                       width: 140,
//                       height: 140,
//                       decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         border: Border.all(
//                           color: const Color(0xFF048664),
//                           width: 4.0,
//                         ),
//                         image: DecorationImage(
//                           fit: BoxFit.cover,
//                           image: AssetImage(widget.fruits[index].imagePath),
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 // Start the slideshow logic here
//                 _startSlideshow();
//               },
//               child: Text('Start Slideshow'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


  
















// import 'package:flutter/material.dart';
// import 'package:flutter_tts/flutter_tts.dart';

// void main() => runApp(MyAudio());

// class MyAudio extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyDialog(),
//     );
//   }
// }

// class MyDialog extends StatefulWidget {
//   @override
//   _MyDialogState createState() => _MyDialogState();
// }

// class _MyDialogState extends State<MyDialog> {
//   final FlutterTts flutterTts = FlutterTts();
//   bool isPlaying = false;

//   Future<void> _speak(String text) async {
//     try {
//       await flutterTts.setLanguage("en-IN");
//       await flutterTts.setVoice({
//         "name": "female_voice_name_here"
//       }); // Replace "female_voice_name_here" with the correct voice name
//       if (isPlaying) {
//         await flutterTts.stop();
//         setState(() {
//           isPlaying = false;
//         });
//       } else {
//         await flutterTts.speak(text);
//         setState(() {
//           isPlaying = true;
//         });
//       }
//     } catch (e) {
//       print("Error: $e");
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     String textToSpeak =
//         '''They're rich in fiber and antioxidants. Eating them is linked to a lower chance of getting many chronic conditions, including diabetes, heart disease, and cancer. Apples may also promote weight loss and improve gut and brain health.''';

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Text-to-Speech App'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               textToSpeak,
//               textAlign: TextAlign.center,
//               style: TextStyle(fontSize: 16),
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 // Handle the action for the Listen button
//                 _speak(textToSpeak);
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: const Color.fromARGB(255, 236, 24, 155),
//               ),
//               child: Padding(
//                 padding: EdgeInsets.all(10.0),
//                 child: Row(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Icon(
//                       isPlaying
//                           ? Icons.pause_circle_outline
//                           : Icons.play_circle_outline,
//                       color: Colors.white,
//                     ),
//                     SizedBox(width: 8.0),
//                     Text('Listen', style: TextStyle(color: Colors.white)),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



// import 'dart:typed_data';

// import 'package:http/http.dart' as http;
// import 'dart:convert';

// import 'package:path_provider/path_provider.dart';
// import 'dart:io';
// import 'package:audioplayers/audioplayers.dart';

// var _apikey = "AIzaSyDWx34PZW0hjSpwExBo5bwrENvyRkLisBE";
// AudioPlayer audioPlayer = AudioPlayer();

// const String femalevoice = "cmn-CN-Standard-A";
// const String malevoice = "cmn-CN-Standard-B";

// Future<http.Response> texttospeech(String text, String voicetype) {
//   String url =
//       "https://texttospeech.googleapis.com/v1beta1/text:synthesize?key=$_apikey";

//   var body = json.encode({
//     "audioConfig": {"audioEncoding": "LINEAR16", "pitch": 0, "speakingRate": 1},
//     "input": {"text": text},
//     "voice": {"languageCode": "cmn-CN", "name": voicetype}
//   });

//   var response =
//       http.post(AudioSource.uri(Uri.parse(url)) headers: {"Content-type": "application/json"}, body: body);

//   return response;
// }

// // Play male voice
// playmalevoice(String text) async {
//   var response = await texttospeech(text, malevoice);
//   var jsonData = jsonDecode(response.body);

//   String audioBase64 = jsonData['audioContent'];

//   Uint8List bytes = base64Decode(audioBase64);

//   String dir = (await getApplicationDocumentsDirectory()).path;
//   File file =
//       File("$dir/" + DateTime.now().millisecondsSinceEpoch.toString() + ".mp3");

//   await file.writeAsBytes(bytes);

//   int result = await audioPlayer.play(file.path as Source);
//   audioPlayer.setPlaybackRate(playbackRate: 0.7);
//   audioPlayer.setVolume(1);
//   if (result == 1) {
//     // success
//   }
// }

// // play female voice
// playfemalevoice(String text) async {
//   var response = await texttospeech(text, femalevoice);
//   var jsonData = jsonDecode(response.body);

//   String audioBase64 = jsonData['audioContent'];

//   Uint8List bytes = base64Decode(audioBase64);

//   String dir = (await getApplicationDocumentsDirectory()).path;
//   File file =
//       File("$dir/" + DateTime.now().millisecondsSinceEpoch.toString() + ".mp3");

//   await file.writeAsBytes(bytes);

//   int result = await audioPlayer.play(file.path);
//   audioPlayer.setPlaybackRate(playbackRate: 0.7);
//   audioPlayer.setVolume(1);
//   if (result == 1) {
//     // success
//   }
// }
// ignore_for_file: sort_child_properties_last, duplicate_ignore


// import 'package:flutter/material.dart';
// import 'package:vanapp/addDriver.dart';
// import 'package:vanapp/addroute.dart';
// import 'package:vanapp/addvan.dart';
// import 'package:vanapp/map.dart';
// import 'package:vanapp/arrivalentry.dart';
// import 'package:vanapp/routesheet.dart';


// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});


//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }


// class _MyHomePageState extends State<MyHomePage> {
//   String? selectedStatus = 'All';
//   DateTime selectedDate = DateTime.now();


//   Future<void> _selectDate(BuildContext context) async {
//     final DateTime? picked = await showDatePicker(
//       context: context,
//       initialDate: selectedDate,
//       firstDate: DateTime(2000),
//       lastDate: DateTime(2101),
//     );
//     if (picked != null && picked != selectedDate) {
//       setState(() {
//         selectedDate = picked;
//       });
//     }
//   }


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.purple,
//         title: null, // Remove the text
//         centerTitle: true, // Center the content


//         flexibleSpace: Center(
//           child: Padding(
//             padding: const EdgeInsets.only(
//                 top: 25.0), // Adjust the padding as needed
//             child: Image.asset(
//               'img/logo2.gif',
//               width: 100, // Adjust the width as needed
//               height: 100, // Adjust the height as needed
//             ),
//           ),
//         ),


//         toolbarHeight: 70,
//       ),

//       endDrawer: Padding(
//         padding: const EdgeInsets.only(
//             bottom: 290.0, right: 10), // Set the desired padding here
//         child: ClipRRect(
//           borderRadius:
//               BorderRadius.circular(16.0), // Set the desired border radius here
//           child: SizedBox(
//             width: 220,
//             height: 380,
//             child: Drawer(
//               child: ListView(
//                 padding: EdgeInsets.zero,
//                 children: <Widget>[
//                   Container(
//                     color: Colors.purple,
//                     padding: const EdgeInsets.all(5.0),
//                     child: const Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: <Widget>[
//                         CircleAvatar(
//                           backgroundImage: AssetImage(
//                               'img/logo3.webp'), // Set your image here
//                           radius: 50.0,
//                         ),
//                         SizedBox(height: 10.0),
//                         Text(
//                           'Van App',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 20,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   ListTile(
//                     leading: const Icon(Icons
//                         .add_box), // Replace Icons.add_box with the desired icon
//                     title: const Text('Add Route'),
//                     titleTextStyle:
//                         const TextStyle(fontSize: 16, color: Colors.black),
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => const AddRoute(),
//                         ),
//                       );
//                       // Add the functionality you want when this end drawer item is tapped.
//                     },
//                   ),


//                   ListTile(
//                     leading: const Icon(Icons
//                         .directions_bus_filled_sharp), // Replace Icons.directions_car with the desired icon
//                     title: const Text('Add Van'),
//                     titleTextStyle:
//                         const TextStyle(fontSize: 16, color: Colors.black),
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) => const Addvan()),
//                       );
//                       // Add the functionality you want when this end drawer item is tapped.
//                     },
//                   ),
//                   ListTile(
//                     leading: const Icon(Icons
//                         .person_add), // Replace Icons.person with the desired icon
//                     title: const Text('Add Driver'),
//                     titleTextStyle:
//                         const TextStyle(fontSize: 16, color: Colors.black),
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => const AddDriver(),
//                         ),
//                       );
//                       // Add the functionality you want when this end drawer item is tapped.
//                     },
//                   ),
//                   ListTile(
//                     leading:
//                         const Icon(Icons.map), // Replace with the desired icon
//                     title: const Text('Map Driver'),
//                     titleTextStyle:
//                         const TextStyle(fontSize: 16, color: Colors.black),
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => const MapPage(),
//                         ),
//                       );
//                       // Add the functionality you want when this ListTile is tapped.
//                     },
//                   )


//                   // Add more end drawer ListTile items as needed.
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(left: 10.0, right: 10, top: 20),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   // First row: Date and input box
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment
//                         .center, // Center the content vertically
//                     children: [
//                       // Text widget for Date
//                       const Expanded(
//                         flex: 1,
//                         child: Text(
//                           'Date: ',
//                           style: TextStyle(
//                               fontSize: 16, fontWeight: FontWeight.bold),
//                         ),
//                       ),
//                       // Input box (TextFormField) for Date
//                       Expanded(
//                         flex: 2,
//                         child: InkWell(
//                           onTap: () => _selectDate(context),
//                           child: InputDecorator(
//                             decoration: const InputDecoration(
//                               labelText: 'Select Date',
//                               border: OutlineInputBorder(),
//                               contentPadding:
//                                   EdgeInsets.symmetric(horizontal: 8.0),
//                             ),
//                             child: Text(
//                               "${selectedDate.toLocal()}".split(' ')[0],
//                               style: const TextStyle(fontSize: 16),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(
//                       height: 1.0), // Add vertical spacing between rows
//                   // Second row: Status and dropdown box
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       const Expanded(
//                         flex: 1,
//                         child: Text(
//                           'Status: ',
//                           style: TextStyle(
//                               fontSize: 16, fontWeight: FontWeight.bold),
//                         ),
//                       ),
//                       Expanded(
//                         flex: 2,
//                         child: DropdownButton<String>(
//                           value: selectedStatus, // Set the selected value
//                           items: <String>['All', 'Delay', 'On time']
//                               .map((String value) {
//                             return DropdownMenuItem<String>(
//                               value: value,
//                               child: Container(
//                                 color: value !=
//                                         'All' // Only set background color for non-'All' items
//                                     ? value == 'Delay'
//                                         ? Colors.red
//                                         : Colors.green
//                                     : null, // Use null to remove background color for 'All'
//                                 padding: const EdgeInsets.symmetric(
//                                   vertical: 5.0,
//                                   horizontal: 16.0,
//                                 ),
//                                 child: Text(
//                                   value,
//                                   style: TextStyle(
//                                     color: value != 'All'
//                                         ? Colors.white
//                                         : Colors.black, // Text color
//                                     fontSize: 16.0, // Text size
//                                   ),
//                                 ),
//                               ),
//                             );
//                           }).toList(),
//                           onChanged: (String? newValue) {
//                             // Update the selected value when the user makes a selection
//                             setState(() {
//                               selectedStatus = newValue;
//                             });
//                           },
//                         ),
//                       ),
//                     ],
//                   )
//                 ],
//               ),
//             ),
//             Container(
//               padding: const EdgeInsets.only(
//                   left: 20.0,
//                   right: 20,
//                   bottom: 20), // Add padding to the Table
//               child: Table(
//                 border: TableBorder.all(), // Add border to the Table
//                 children: [
//                   TableRow(
//                     decoration: BoxDecoration(
//                       color: Colors
//                           .grey[300], // Add a background color to the TableRow
//                     ),
//                     children: const [
//                       TableCell(
//                         child: Padding(
//                           padding: EdgeInsets.all(
//                               10.0), // Adjust the padding as needed
//                           child: Text(
//                             'R.No',
//                             style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                         ),
//                       ),
//                       TableCell(
//                         child: Padding(
//                           padding: EdgeInsets.all(
//                               10.0), // Adjust the padding as needed
//                           child: Text(
//                             'Arrived',
//                             style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                         ),
//                       ),
//                       TableCell(
//                         child: Padding(
//                           padding: EdgeInsets.all(
//                               10.0), // Adjust the padding as needed
//                           child: Text(
//                             'Remarks',
//                             style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   TableRow(
//                     children: [
//                       const TableCell(
//                         child: Padding(
//                           padding: EdgeInsets.all(
//                               10.0), // Adjust the padding as needed
//                           child: Text('1'),
//                         ),
//                       ),
//                       TableCell(
//                         child: Container(
//                           // Set your desired background color
//                           padding: const EdgeInsets.all(
//                               10.0), // Adjust the padding as needed
//                           child: const Text(
//                             '9:45 AM',
//                             style: TextStyle(
//                               // backgroundColor: Colors
//                               // Set the background color of the text
//                               color: Colors.red, // Set the text color
//                             ),
//                           ),
//                         ),
//                       ),
//                       const TableCell(
//                         child: Padding(
//                           padding: EdgeInsets.all(
//                               5.0), // Adjust the padding as needed
//                           child: Text('Because of repair'),
//                         ),
//                       ),
//                     ],
//                   ),
//                   TableRow(
//                     children: [
//                       const TableCell(
//                         child: Padding(
//                           padding: EdgeInsets.all(
//                               10.0), // Adjust the padding as needed
//                           child: Text('6'),
//                         ),
//                       ),
//                       TableCell(
//                         child: Container(
//                           // Set your desired background color
//                           padding: const EdgeInsets.all(
//                               10.0), // Adjust the padding as needed
//                           child: const Text(
//                             '9:10 AM',
//                             style: TextStyle(
//                               // backgroundColor: Colors
//                               // Set the background color of the text
//                               color: Colors.green, // Set the text color
//                             ),
//                           ),
//                         ),
//                       ),
//                       const TableCell(
//                         child: Padding(
//                           padding: EdgeInsets.all(
//                               10.0), // Adjust the padding as needed
//                           child: Text('-'),
//                         ),
//                       ),
//                     ],
//                   ),
//                   TableRow(
//                     children: [
//                       const TableCell(
//                         child: Padding(
//                           padding: EdgeInsets.all(
//                               10.0), // Adjust the padding as needed
//                           child: Text('8'),
//                         ),
//                       ),
//                       TableCell(
//                         child: Container(
//                           // Set your desired background color
//                           padding: const EdgeInsets.all(
//                               10.0), // Adjust the padding as needed
//                           child: const Text(
//                             '9:12 AM',
//                             style: TextStyle(
//                               // backgroundColor: Colors
//                               // Set the background color of the text
//                               color: Colors.green, // Set the text color
//                             ),
//                           ),
//                         ),
//                       ),
//                       const TableCell(
//                         child: Padding(
//                           padding: EdgeInsets.all(
//                               10.0), // Adjust the padding as needed
//                           child: Text('-'),
//                         ),
//                       ),
//                     ],
//                   ),
//                   TableRow(
//                     children: [
//                       const TableCell(
//                         child: Padding(
//                           padding: EdgeInsets.all(
//                               10.0), // Adjust the padding as needed
//                           child: Text('4'),
//                         ),
//                       ),
//                       TableCell(
//                         child: Container(
//                           // Set your desired background color
//                           padding: const EdgeInsets.all(
//                               10.0), // Adjust the padding as needed
//                           child: const Text(
//                             '9:30 AM',
//                             style: TextStyle(
//                               // backgroundColor: Colors
//                               // Set the background color of the text
//                               color: Colors.red, // Set the text color
//                             ),
//                           ),
//                         ),
//                       ),
//                       const TableCell(
//                         child: Padding(
//                           padding: EdgeInsets.all(
//                               10.0), // Adjust the padding as needed
//                           child: Text('Some reason'),
//                         ),
//                       ),
//                     ],
//                   ),
//                   TableRow(
//                     children: [
//                       const TableCell(
//                         child: Padding(
//                           padding: EdgeInsets.all(
//                               10.0), // Adjust the padding as needed
//                           child: Text('5'),
//                         ),
//                       ),
//                       TableCell(
//                         child: Container(
//                           // Set your desired background color
//                           padding: const EdgeInsets.all(
//                               10.0), // Adjust the padding as needed
//                           child: const Text(
//                             '9:00 AM',
//                             style: TextStyle(
//                               // backgroundColor: Colors
//                               // Set the background color of the text
//                               color: Colors.green, // Set the text color
//                             ),
//                           ),
//                         ),
//                       ),
//                       const TableCell(
//                         child: Padding(
//                           padding: EdgeInsets.all(
//                               10.0), // Adjust the padding as needed
//                           child: Text('Some reason'),
//                         ),
//                       ),
//                     ],
//                   ),
//                   TableRow(
//                     children: [
//                       const TableCell(
//                         child: Padding(
//                           padding: EdgeInsets.all(
//                               10.0), // Adjust the padding as needed
//                           child: Text('3'),
//                         ),
//                       ),
//                       TableCell(
//                         child: Container(
//                           // Set your desired background color
//                           padding: const EdgeInsets.all(
//                               10.0), // Adjust the padding as needed
//                           child: const Text(
//                             '9:45 AM',
//                             style: TextStyle(
//                               // backgroundColor: Colors
//                               // Set the background color of the text
//                               color: Colors.red, // Set the text color
//                             ),
//                           ),
//                         ),
//                       ),
//                       const TableCell(
//                         child: Padding(
//                           padding: EdgeInsets.all(
//                               10.0), // Adjust the padding as needed
//                           child: Text('Some reason'),
//                         ),
//                       ),
//                     ],
//                   ),
//                   TableRow(
//                     children: [
//                       const TableCell(
//                         child: Padding(
//                           padding: EdgeInsets.all(
//                               10.0), // Adjust the padding as needed
//                           child: Text('2'),
//                         ),
//                       ),
//                       TableCell(
//                         child: Container(
//                           // Set your desired background color
//                           padding: const EdgeInsets.all(
//                               10.0), // Adjust the padding as needed
//                           child: const Text(
//                             '9:50 AM',
//                             style: TextStyle(
//                               // backgroundColor: Colors
//                               // Set the background color of the text
//                               color: Colors.red, // Set the text color
//                             ),
//                           ),
//                         ),
//                       ),
//                       const TableCell(
//                         child: Padding(
//                           padding: EdgeInsets.all(
//                               10.0), // Adjust the padding as needed
//                           child: Text('Some reason'),
//                         ),
//                       ),
//                     ],
//                   ),
//                   TableRow(
//                     children: [
//                       const TableCell(
//                         child: Padding(
//                           padding: EdgeInsets.all(
//                               10.0), // Adjust the padding as needed
//                           child: Text('7'),
//                         ),
//                       ),
//                       TableCell(
//                         child: Container(
//                           // Set your desired background color
//                           padding: const EdgeInsets.all(
//                               10.0), // Adjust the padding as needed
//                           child: const Text(
//                             '9:28 AM',
//                             style: TextStyle(
//                               // backgroundColor: Colors
//                               // Set the background color of the text
//                               color: Colors.red, // Set the text color
//                             ),
//                           ),
//                         ),
//                       ),
//                       const TableCell(
//                         child: Padding(
//                           padding: EdgeInsets.all(
//                               10.0), // Adjust the padding as needed
//                           child: Text('Some reason'),
//                         ),
//                       ),
//                     ],
//                   ),
//                   TableRow(
//                     children: [
//                       const TableCell(
//                         child: Padding(
//                           padding: EdgeInsets.all(
//                               10.0), // Adjust the padding as needed
//                           child: Text('10'),
//                         ),
//                       ),
//                       TableCell(
//                         child: Container(
//                           // Set your desired background color
//                           padding: const EdgeInsets.all(
//                               10.0), // Adjust the padding as needed
//                           child: const Text(
//                             '9:45 AM',
//                             style: TextStyle(
//                               // backgroundColor: Colors
//                               // Set the background color of the text
//                               color: Colors.red, // Set the text color
//                             ),
//                           ),
//                         ),
//                       ),
//                       const TableCell(
//                         child: Padding(
//                           padding: EdgeInsets.all(
//                               10.0), // Adjust the padding as needed
//                           child: Text('Some reason'),
//                         ),
//                       ),
//                     ],
//                   ),
//                   TableRow(
//                     children: [
//                       const TableCell(
//                         child: Padding(
//                           padding: EdgeInsets.all(
//                               10.0), // Adjust the padding as needed
//                           child: Text('9'),
//                         ),
//                       ),
//                       TableCell(
//                         child: Container(
//                           // Set your desired background color
//                           padding: const EdgeInsets.all(
//                               10.0), // Adjust the padding as needed
//                           child: const Text(
//                             '9:45 AM',
//                             style: TextStyle(
//                               // backgroundColor: Colors
//                               // Set the background color of the text
//                               color: Colors.green, // Set the text color
//                             ),
//                           ),
//                         ),
//                       ),
//                       const TableCell(
//                         child: Padding(
//                           padding: EdgeInsets.all(
//                               10.0), // Adjust the padding as needed
//                           child: Text('Some reason'),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               margin: const EdgeInsets.all(0.0),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   const SizedBox(
//                       height: 0), // Add some spacing between the rows
//                   Padding(
//                     padding: const EdgeInsets.only(
//                         top: 0,
//                         left: 40.0,
//                         right: 40,
//                         bottom: 10), // Adjust the padding as needed
//                     child: ElevatedButton(
//                       onPressed: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => const ArrivalPage(),
//                           ),
//                         );
//                         // Add your code for the button here
//                       },
//                       style: ElevatedButton.styleFrom(
//                         elevation: 10,
//                         backgroundColor: const Color(0xFFff6b89),
//                         minimumSize: const Size(170, 70), // Fixed square size
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(
//                               50.0), // Adjust the radius as needed
//                         ),
//                       ),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.only(left: 15),
//                             child: Image.asset(
//                               'img/logo2.gif', // Replace with the path to your image asset
//                               width: 60, // Set the width of the image
//                               height: 60, // Set the height of the image
//                             ),
//                           ),
//                           const SizedBox(
//                             width:
//                                 0, // Add some spacing between the image and text
//                           ),
//                           const Padding(
//                             padding: EdgeInsets.only(
//                               right: 0,
//                               left: 30,
//                             ), // Adjust the padding as needed
//                             child: Text(
//                               "Arrival Entry",
//                               style: TextStyle(
//                                 color: Colors.black,
//                                 fontSize: 18,


//                                 // Set text alignment to center
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(
//                         top: 10,
//                         left: 40.0,
//                         right: 40,
//                         bottom: 40), // Adjust the padding as needed
//                     child: ElevatedButton(
//                         onPressed: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => RouteSheets(),
//                             ),
//                           );
//                           // Add your code for the button here
//                         },
//                         style: ElevatedButton.styleFrom(
//                           elevation: 10,
//                           backgroundColor: const Color(0xFFffb732),
//                           minimumSize: const Size(170, 70), // Fixed square size
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(
//                                 50.0), // Adjust the radius as needed
//                           ),
//                         ),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.only(
//                                   left: 15), // Adjust the padding as needed
//                               child: Image.asset(
//                                 'img/road.png', // Replace with the path to your image asset
//                                 width: 40, // Set the width of the image
//                                 height: 40, // Set the height of the image
//                                 alignment: Alignment
//                                     .topLeft, // Align the image to the top-left
//                               ),
//                             ),
//                             const SizedBox(
//                               width:
//                                   0, // Add some spacing between the image and text
//                             ),
//                             const Padding(
//                               padding: EdgeInsets.only(
//                                   left: 50,
//                                   right: 0.0), // Adjust the padding as needed
//                               child: Align(
//                                 alignment: Alignment
//                                     .centerLeft, // Align the text to the inside left-center
//                                 child: Text(
//                                   "Route Sheet",
//                                   style: TextStyle(
//                                     color: Colors.black,
//                                     fontSize: 18,
//                                   ),
//                                   textAlign: TextAlign.left,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         )),
//                   )
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }





