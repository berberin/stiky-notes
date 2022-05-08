import 'package:on_audio_query/on_audio_query.dart';

import '../models/song.dart';

class FileService {
  static Future<List<Song>> getMusicFiles() async {
    List<Song> songs = <Song>[];

    // tim cac file nhac
    var _audioQuery = OnAudioQuery();
    // xin quyen truy cap bo nho
    await _audioQuery.permissionsRequest();
    List<SongModel> rawSongs = await _audioQuery.querySongs();

    for (var song in rawSongs) {
      songs.add(
        Song(
          name: song.title,
          filePath: song.uri ?? '',
        ),
      );
    }

    return songs;
  }

  static Future<List<SongModel>> getSongs() async {
    var _audioQuery = OnAudioQuery();
    await _audioQuery.permissionsRequest();
    return _audioQuery.querySongs();
  }
}
