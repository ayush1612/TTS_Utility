import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class TextToSpeech extends StatefulWidget {
  static String id = '/';
  @override
  _State createState() => _State();
}

class _State extends State<TextToSpeech> {
  FlutterTts flutterTts = FlutterTts();
  @override
  Widget build(BuildContext context) {

    Future _speak(text) async{
      print(await flutterTts.getLanguages);
      await flutterTts.setLanguage("kn-IN");
      await flutterTts.setSpeechRate(0.40);
      await flutterTts.setPitch(0.65);
      await flutterTts.speak(text);
      

    }

    return Container(
      alignment: Alignment.center,
      child: RaisedButton(
        child: Text("Tap this button"),
        onPressed: () => _speak("ನನಗೆ 1 ಕೆಜಿ ಮಾವಿನಹಣ್ಣು ಮತ್ತು 2 ಕೆಜಿ ಸೇಬು ಮತ್ತು 4 ಕೆಜಿ ಬಾಳೆಹಣ್ಣು ನೀಡಿ"),
      ),
    );
  }
}