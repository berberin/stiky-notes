import 'package:on_audio_room/on_audio_room.dart';

class DependencyManager {
  DependencyManager._();

  static Future<void> init() async {
    await OnAudioRoom().initRoom();
    print(OnAudioRoom().getRoomInfo(RoomType.PLAYLIST).length);
  }
}
