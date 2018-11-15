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
          //se crea un contenedor que envuelva el card
          // para la creacion de la flanja de informacion de cada imagen
          Container(
            child: new Stack(
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
                 ),
                 //se usa para posicionar la flanja
                 new Positioned(
                   //no tenga espacios (bordes ) las flanjas
                   left: 0.0,
                   bottom: 0.0,
                   right: 0.0,
                   child: new Container(
                     decoration: new BoxDecoration(
                       color: Colors.grey[900].withOpacity(0.5),
                     ),
                     constraints: new BoxConstraints(
                       maxHeight: 55.0,
                     ),
                   ),
                 )
               ],
            ),
          )
        ],
      ),
    );
  }
}