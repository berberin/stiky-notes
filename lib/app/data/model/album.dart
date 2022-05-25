import 'dart:typed_data';

import 'package:on_audio_query/on_audio_query.dart';

class Album {
  String albumName;
  int id;
  String? artist;
  int? artistId;
  int numOfSongs;

  Album(this.albumName, this.id, this.artist, this.artistId, this.numOfSongs);

  factory Album.fromAlbumAudioQuery(AlbumModel albumModel) {
    return Album(
      albumModel.album,
      albumModel.id,
      albumModel.artist,
      albumModel.artistId,
      albumModel.numOfSongs,
    );
  }

  Future<Uint8List?> loadCoverData() async {
    return OnAudioQuery().queryArtwork(id, ArtworkType.ALBUM);
  }
}

