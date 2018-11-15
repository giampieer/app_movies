import 'package:flutter/material.dart';
import 'package:movies_app/model/Media.dart';
class MediaListItem extends StatelessWidget {
  //creamos un objeto
  final  Media media;
  //creacion de un constructor que viaje el objeto media
  MediaListItem(this.media);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //crea un widget Card
    return new Card(
      child: new Column(
        children: <Widget>[
          new FadeInImage.assetNetwork(
            //se usa placehorlder si una imagen no carga de la API
            placeholder: "assets/placeholder.jpg",
            image: media.getPosterUrl(),
            //como se va desplegar la imagen dento de los diferentes espacio ubicados
            fit: BoxFit.cover,
            //definir el ancho de la imagen es inifito (ocupa todo el espacio
            width: double.infinity,
            //definir el tamaño de la imagen
            height: 400.0,
            //duracion de la animacion de la imagen
            fadeInDuration: new Duration(milliseconds: 40),
          )
        ],
      ),
    );
  }
}