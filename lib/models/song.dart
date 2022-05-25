import 'package:stiky_notes/app/data/service/audio_service.dart';

class Song {
  String name;
  // String artist;
  String filePath;

  Song({
    required this.name,
    required this.filePath,
  });

  void play() {
    AudioService.playAudio(filePath);
  }
}
