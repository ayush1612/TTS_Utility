import 'package:flutter/material.dart';
import 'package:texttospeech/Screens/tts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF0A0E21),
          scaffoldBackgroundColor: Color(0xFF0A0E21),
        ),
        initialRoute: TextToSpeech.id,
        routes: {
          TextToSpeech.id: (context) => TextToSpeech(),
          // FrontPage.id: (context) => FrontPage(),
        }
//      home: MyHomePage(title: 'Flutter Demo Home Page'),
        );
  }
}