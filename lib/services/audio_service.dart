import 'package:just_audio/just_audio.dart';

class AudioService {
  AudioService._();

  static AudioPlayer player = AudioPlayer();

  static playAudio(String filePath) {
    if (player.playing) {
      player.pause();
    }
    player.setUrl(filePath);
    player.play();
  }
}
