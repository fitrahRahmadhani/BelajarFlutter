import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text('Xylophone'),
        ),
        body: PlayAudio(),
      ),
    );
  }
}

class PlayAudio extends StatefulWidget {
  const PlayAudio({super.key});

  @override
  State<PlayAudio> createState() => _PlayAudioState();
}

class _PlayAudioState extends State<PlayAudio> {
  // Future<void> playAudioFromLocal(String path) async {
  //   await player.play(DeviceFileSource(path)); // will immediately start playing
  // }

  Future<void> playSound(note) async {
    final player = AudioPlayer();
    await player.play(AssetSource('note$note.wav'));
  }

  Expanded buildKey(color, number) {
    return Expanded(
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            playSound(number);
          },
          child: Text(''),
          style: ElevatedButton.styleFrom(backgroundColor: color),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Column(
        children: [
          buildKey(Colors.red, 1),
          buildKey(Colors.yellow, 2),
          buildKey(Colors.green, 3),
          buildKey(Colors.orange, 4),
          buildKey(Colors.blue, 5),
          buildKey(Colors.purple, 6),
          buildKey(Colors.pink, 7),
        ],
      ),
    ));
  }
}
