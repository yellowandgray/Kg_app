// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:kg_app/main.dart';

class Testpage extends StatefulWidget {
  const Testpage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _TestpageState createState() => _TestpageState();
}

class _TestpageState extends State<Testpage> {
  FlutterTts flutterTts = FlutterTts();

  // Future<void> setTtsConfiguration() async {
  //   // Get available voices
  //   List<dynamic> voices = await flutterTts.getVoices;

  //   // Choose a specific voice based on its name or language
  //   String selectedVoice =
  //       "Your Desired Voice Name"; // Set the desired voice name

  //   // Set the voice
  //   await flutterTts
  //       .setVoice(voices.firstWhere((voice) => voice['name'] == selectedVoice));

  //   // Set other TTS parameters (optional)
  //   await flutterTts.setPitch(6.0); // Set pitch (1.0 is the default)
  //   await flutterTts.setSpeechRate(6.0); // Set speech rate (1.0 is the default)
  // }

  Future<void> setTtsConfiguration() async {
    // Get available voices
    List<dynamic> voices = await flutterTts.getVoices;

    // Determine the best voice based on your criteria
    String selectedVoice;
    for (var voice in voices) {
      // Customize your criteria here, for example, choosing a female Indian voice
      if (voice['language'] == 'en-IN' && voice['gender'] == 'female') {
        selectedVoice = voice['name'];
        break; // Found a suitable voice, exit the loop
      }
    }

    selectedVoice = voices.first['name'];

    // Set the voice
    await flutterTts
        .setVoice(voices.firstWhere((voice) => voice['name'] == selectedVoice));

    // Set other TTS parameters (optional)
    await flutterTts.setPitch(0.5); // Set pitch (1.0 is the default)
    await flutterTts
        .setSpeechRate(10.1); // Set speech rate (1.0 is the default)
  }

  final List<String> photoPaths = [
    'img/apple.jpg',
    'img/Avocado-fruits.webp',
    'img/Fresh-Green-Grapes.jpg',
    'img/fresh-mango-fruits.jpg',
  ];

  String selectedFruit = ''; // Track the selected fruit
  String selectedGif = ''; // Track the selected GIF

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF026279),
        centerTitle: true,
        title: const Text('Test'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MyApp(),
              ),
            );
            // Navigator.pop(context); // This will navigate back
          },
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('img/bg_image.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width *
                        0.1, // Set horizontal padding as 10% of screen width
                    vertical: MediaQuery.of(context).size.height *
                        0.18, // Set vertical padding as 10% of screen height
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Material(
                          elevation:
                              5, // Set the elevation value to control the shadow effect
                          borderRadius: BorderRadius.circular(
                              8), // Optional: Set border radius for rounded corners
                          child: Container(
                            padding: const EdgeInsets.all(
                                15), // Add padding if needed
                            decoration: BoxDecoration(
                              color:
                                  Colors.white, // Set background color to white
                              border: Border.all(
                                color:
                                    Colors.black, // Set border color to black
                                width: 1, // Set border width
                              ),
                              borderRadius: BorderRadius.circular(
                                  8), // Optional: Set border radius for rounded corners
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
                            child: const Text(
                              '1. Choose the correct picture for apple from the pictures below:', // Add a title
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),

                      // Display photos in a column
                      // Padding(
                      //   padding: const EdgeInsets.only(
                      //       left: 20.0,
                      //       top: 40.0), // Adjust the left padding as needed
                      //   child:
                      Wrap(
                        spacing: 20.0,
                        alignment: WrapAlignment.center, // Center the images
                        children: [
                          for (var i = 0; i < photoPaths.length; i++)
                            if (i < photoPaths.length)
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedFruit = photoPaths[i];
                                    _showGifDialog(); // Show the GIF immediately
                                  });
                                },
                                child: Container(
                                  margin: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.height *
                                        0.05, // 10% of screen height
                                    left: MediaQuery.of(context).size.width *
                                        0.02, // 2% of screen width
                                    right: MediaQuery.of(context).size.width *
                                        0.02, // 2% of screen width
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(60.0),
                                    color: selectedFruit == photoPaths[i]
                                        ? Colors
                                            .green // Highlight selected fruit
                                        : Colors.white,
                                  ),
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipOval(
                                    child: Image.asset(
                                      photoPaths[i],
                                      width: 110,
                                      height: 110,
                                    ),
                                  ),
                                ),
                              ),
                        ],
                      ),
                      //)
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void _showGifDialog() async {
    String gifAsset;
    String message;

    if (selectedFruit == 'img/apple.jpg') {
      gifAsset = 'img/welldone.gif';
      message = 'Well done!';
    } else {
      gifAsset = 'img/wrong.gif';
      message = 'Not correct!';
    }

    await flutterTts.speak(message); // Use TTS to speak the message

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Stack(
          children: [
            // Background with transparency
            Container(
              color: Colors.black.withOpacity(0.5), // Adjust opacity as needed
            ),
            // Centered content
            Center(
              child: Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: 200, // Adjust width as needed
                      height: 200, // Adjust height as needed
                      child: Image.asset(gifAsset),
                    ),
                    const SizedBox(height: 16.0),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('OK'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
