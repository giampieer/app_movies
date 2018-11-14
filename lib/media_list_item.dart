import 'package:flutter/material.dart';
import 'package:movies_app/model/Media.dart';
class MediaListItem extends StatelessWidget {
  final  Media media;
  MediaListItem(this.media);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Card(
      child: new Column(
        children: <Widget>[
          new FadeInImage.assetNetwork(
              placeholder: "assets/placeholder.jpg",
              image: media.getPosterUrl())
        ],
      ),
    );
  }
}