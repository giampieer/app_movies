import 'package:movies_app/common/util.dart';

class Media {
  String url;
  String title;
  String gender1;
  String image;
  //usamos el metodo creado en la clase util.dart
  String getPosterUrl() =>getMediumPictureUrl(image);
  //ejemplo de u arraya en json
  List<dynamic>genreIds;


  factory Media(Map jsonMap) {
    return new Media.deserialize(jsonMap);
  }
  //vamos a capturar los valores del json
  //deserialize = es tranformar un json en un objeto
  //serializar = es tomar las propiedad los valores y transformar en un archivo json o xml
  Media.deserialize(Map json) :
        url = json["url"].toString(),
        title = json["title"].toString(),
        gender1 = json["gender1"].toString(),
        image = json["image"].toString();

       // genreIds = json["genreIds"].toList();
}