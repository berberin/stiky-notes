import 'package:on_audio_query/on_audio_query.dart';

class DependencyManager {
  DependencyManager._();

  static Future<void> init() async {
    var _audioQuery = OnAudioQuery();
    await _audioQuery.permissionsRequest();
  }
}
