// ignore_for_file: must_be_immutable

import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class ThumbnailPage extends StatefulWidget {
  const ThumbnailPage({super.key});

  @override
  ThumbnailPages createState() => ThumbnailPages();
}

class ThumbnailPages extends State<ThumbnailPage> {
  final FlutterTts flutterTts = FlutterTts();
  bool isPlaying = false;
  List<Fruit> fruits = [
    Fruit(
      title: 'Apple (noun)',
      name: 'Apple',
      description:
          'They\'re rich in fiber and antioxidants. Eating them is linked to a lower chance of getting many chronic conditions, including diabetes, heart disease, and cancer. Apples may also promote weight loss and improve gut and brain health.',
      imagePath: 'img/apple.jpg',
    ),
    Fruit(
      title: 'Mango (noun)',
      name: 'Mango',
      description:
          'Mango is a delicious and juicy fruit that is rich in vitamins, minerals, and antioxidants. It is known for its sweet and tropical flavor and is a favorite in many cuisines around the world.',
      imagePath: 'img/fresh-mango-fruits.jpg',
    ),
    Fruit(
      title: 'Orange (noun)',
      name: 'Orange',
      description:
          '''Oranges are a great source of vitamin C, fiber, and antioxidants. They can help boost your immune system, improve skin health, and aid in digestion. Including oranges in your diet can have numerous health benefits.''',
      imagePath: 'img/natural-fresh-orange-fruits-433.jpg',
    ),
    Fruit(
      title: 'Green Grapes (noun)',
      name: 'Green Grapes',
      description:
          '''Green grapes are a delicious and healthy snack. They are rich in vitamins and antioxidants. Regular consumption of green grapes may help improve heart health and provide other health benefits.''',
      imagePath: 'img/Fresh-Green-Grapes.jpg',
    ),
    Fruit(
      title: 'Papaya (noun)',
      name: 'Papaya',
      description:
          '''Papaya is a tropical fruit known for its sweet and vibrant orange flesh. It is rich in vitamins, minerals, and dietary fiber. Papaya can help improve digestion and promote skin health.''', // Replace with your content
      imagePath: 'img/papaya.jpg',
    ),
    Fruit(
      title: 'Pineapple (noun)',
      name: 'Pineapple',
      description:
          '''Pineapple is a tropical fruit known for its sweet and tangy flavor. It is packed with vitamins, minerals, and antioxidants. Pineapple can aid digestion and boost the immune system.''',
      imagePath: 'img/pineapple.webp',
    ),
    Fruit(
      title: 'Banana (noun)',
      name: 'Banana',
      description:
          '''Banana is a tropical fruit known for its natural sweetness. It is a good source of potassium, vitamins, and dietary fiber. Bananas can provide energy and support heart health.''',
      imagePath: 'img/51ebZJ+DR4L._AC_UF1000,1000_QL80_.jpg',
    ),
    Fruit(
      title: 'Pomegranate (noun)',
      name: 'Pomegranate',
      description:
          '''Pomegranate is a delicious and nutritious fruit known for its juicy seeds. It is rich in antioxidants, vitamins, and minerals. Pomegranate may have various health benefits, including improving heart health and reducing inflammation.''',
      imagePath: 'img/pomegranate-1-istock-612833996-1.jpg',
    ),
    Fruit(
      title: 'Cherry (noun)',
      name: 'Cherry',
      description:
          '''Cherries are small, round fruits that come in various colors. They are rich in vitamins, minerals, and antioxidants. Cherries may have benefits for heart health, sleep quality, and reducing muscle soreness.''', // Replace with your content
      imagePath: 'img/30000996_12-fresho-cherry.webp',
    ),
    Fruit(
      title: 'Watermelon (noun)',
      name: 'Watermelon',
      description:
          '''Watermelon is a delicious and refreshing fruit that's perfect for staying hydrated during the summer. It's low in calories and contains essential vitamins and minerals. Eating watermelon may also have various health benefits.''',
      imagePath: 'img/whole-and-slices-watermelon.webp',
    ),
    // Add more fruits as needed
  ];

  Future<void> _speak(String text) async {
    try {
      await flutterTts.setLanguage("en-IN");

      await flutterTts.setSpeechRate(0.4);

      if (isPlaying) {
        await flutterTts.stop();
        isPlaying = false;
      } else {
        await flutterTts.speak(text);
        isPlaying = true;
      }
    } catch (e) {
      print("Error: $e");
    }
  }

  void _stop() async {
    try {
      await flutterTts.stop();
      isPlaying = false;
    } catch (e) {
      print("Error stopping audio: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF026279),
        title: const Text('Fruits'),
        actions: [
          TextButton(
            onPressed: () {
              _stop();
              // Handle the "Learn More" button action
            },
            child: const Text(
              'Learn Mode',
              style: TextStyle(
                color: Colors.white, // Set the text color
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Image.asset(
            'img/bg_image.jpg', // Replace with the path to your background image
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Align(
                alignment: Alignment.topCenter,
                child: Wrap(
                  spacing: 30.0, // Spacing between items
                  runSpacing: 8.0, // Spacing between rows
                  children: List.generate(
                    fruits.length,
                    (index) {
                      return GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return _buildDialogContent(
                                context,
                                fruits[index].title,
                                fruits[index].description,
                                fruits[index].imagePath,
                                _stop,
                              );
                            },
                          );
                        },
                        child: Column(
                          children: [
                            Container(
                              width: 140,
                              height: 140,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: const Color(0xFF048664),
                                  width: 4.0,
                                ),
                                image: DecorationImage(
                                  image: AssetImage(fruits[index].imagePath),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(height: 8.0),
                            // Spacing between image and text
                            Container(
                              decoration: BoxDecoration(
                                color: const Color(
                                    0xFF048664), // Set the background color
                                borderRadius: BorderRadius.circular(
                                    8.0), // Set border radius as needed
                              ),
                              padding: const EdgeInsets.all(
                                  8.0), // Add padding to the text
                              child: Text(
                                fruits[index].name,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDialogContent(
    BuildContext context,
    String title,
    String description,
    String imagePath,
    void Function() stop,
  ) {
    return AlertDialog(
      // contentPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      content: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: SizedBox(
                  width: 35,
                  height: 35,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: IconButton(
                        icon: const Icon(
                          Icons.close,
                          color: Colors.white,
                          size: 20,
                        ),
                        onPressed: () {
                          _stop();
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 200,
                width: 300,
                // margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(imagePath),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                description,
                textAlign: TextAlign.justify,
                style: const TextStyle(fontSize: 16, height: 1.3),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Handle the action for the Listen button
                      _speak('$title   $description');
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            isPlaying
                                ? Icons.pause_circle_outline
                                : Icons.play_circle_outline,
                            color: Colors.white,
                          ),
                          const SizedBox(width: 8.0),
                          const Text('Listen',
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return _buildDialogWithCarousel(context, fruits);
                        },
                      );
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.movie_creation, color: Colors.white),
                          SizedBox(width: 8.0),
                          Text('Slideshow',
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDialogWithCarousel(
    BuildContext context,
    List<Fruit> fruits,
  ) {
    return AlertDialog(
      content: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        child: CarouselSlider(
          items: fruits.map((fruit) {
            return Builder(
              builder: (BuildContext context) {
                return GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return _buildDialogContent(
                          context,
                          fruit.title,
                          fruit.description,
                          fruit.imagePath,
                          _stop,
                        );
                      },
                    );
                  },
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: SizedBox(
                          width: 35,
                          height: 35,
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: IconButton(
                                icon: const Icon(
                                  Icons.close,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                onPressed: () {
                                  _stop();
                                  Navigator.of(context).pop();
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        height: 200,
                        width: 300,
                        margin: EdgeInsets.symmetric(horizontal: 1.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(fruit.imagePath),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 7,
                              offset: const Offset(
                                  0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                          height:
                              13), // Adjust the spacing between image and text
                      Text(
                        fruit.title,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        fruit.description,
                        style: const TextStyle(fontSize: 16, height: 1.3),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                );
              },
            );
          }).toList(),
          options: CarouselOptions(
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 2),
            enlargeCenterPage: true,
            aspectRatio: 16 / 9,
            viewportFraction: 0.9,
            height: 440,
          ),
        ),
      ),
    );
  }
}

class Fruit {
  final String title;
  final String description;
  final String imagePath;
  final String name;

  Fruit({
    required this.title,
    required this.description,
    required this.imagePath,
    required this.name,
  });
}
