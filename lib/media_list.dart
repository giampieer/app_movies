import 'package:flutter/material.dart';
import 'package:movies_app/common/HttpHandler.dart';
import 'package:movies_app/model/Media.dart';
import 'package:movies_app/media_list_item.dart';

class MediaList  extends StatefulWidget {
  @override
  _MediaListSate createState() => new _MediaListSate();
}
class _MediaListSate extends State<MediaList> {
  //creacion de un objeto de la class Media.dart
  List<Media> _media = new  List();
  @override
  void initState(){
    super.initState();
    loadMovies();
  }
  void loadMovies () async {
    var movies =  await HttpHandler().fetchMovies();
    setState(() {
      //addAll = llamar toda la data  de la propiedad var = movies
      _media.addAll(movies);
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new  ListView.builder(
        itemCount : _media.length ,
        itemBuilder: (BuildContext context, int index) {
          //se llama el copnstructor de la clase media_list_item
          return new MediaListItem(_media[index]);
        },
      ),
    );
  }
}