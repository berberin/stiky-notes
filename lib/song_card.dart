import 'package:flutter/material.dart';

import 'models/song.dart';

class SongCard extends StatefulWidget {
  final Song song;
  const SongCard({Key? key, required this.song}) : super(key: key);

  @override
  State<SongCard> createState() => _SongCardState();
}

class _SongCardState extends State<SongCard> {
  bool isPlaying = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(40),
      margin: const EdgeInsets.all(10),
      color: Colors.pink,
      child: Row(
        children: [
          Expanded(
            child: Text(widget.song.name),
          ),
          IconButton(
            onPressed: () {
              widget.song.play();
              setState(() {
                isPlaying = true;
              });
            },
            icon: Icon(
              isPlaying ? Icons.pause : Icons.play_arrow_outlined,
            ),
          )
        ],
      ),
    );
  }
}
