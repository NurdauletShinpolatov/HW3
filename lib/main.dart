import 'package:flutter/material.dart';
import 'Home.dart';
import 'AllImages.dart';
import 'Authors.dart';
import 'SavedImages.dart';
import 'AddNewImage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter App',
      initialRoute: '/home',
      routes: {
        '/home': (context) => Home(),
        '/AllImages': (context) => AllImages(
              images: ModalRoute.of(context)!.settings.arguments
                  as List<Map<String, String>>,
            ),
        '/Authors': (context) => Authors(),
        '/SavedImages': (context) => SavedImages(
              savedImages: ModalRoute.of(context)!.settings.arguments
                  as List<Map<String, String>>,
            ),
        '/AddNewImage': (context) => AddNewImage(),
      },
    );
  }
}
