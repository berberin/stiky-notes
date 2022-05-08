import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:stiky_notes/services/file_service.dart';
import 'package:stiky_notes/song_card.dart';

import 'models/song.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Song> songs = <Song>[];
  List<SongModel> fullSongs = <SongModel>[];

  Uint8List? artwork;

  @override
  void initState() {
    super.initState();
    getSongs();
  }

  void getSongs() async {
    songs = await FileService.getMusicFiles();
    fullSongs = await FileService.getSongs();
    var audioQuery = OnAudioQuery();
    artwork = await audioQuery.queryArtwork(
      fullSongs[0].albumId ?? 0,
      ArtworkType.ALBUM,
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: songs.length + 1,
        itemBuilder: (context, index) {
          if (index == songs.length) {
            SongModel song = fullSongs[0];
            return Container(
              color: Colors.teal,
              margin: const EdgeInsets.all(40),
              padding: const EdgeInsets.all(40),
              child: Column(
                children: [
                  Text(song.title),
                  Text(((song.duration ?? 0) / 60000).toString()),
                  Text(song.fileExtension),
                  Text(song.artist.toString()),
                  Image.memory(artwork!),
                ],
              ),
            );
          }
          return SongCard(song: songs[index]);
        },
      ),
    );
  }
}
