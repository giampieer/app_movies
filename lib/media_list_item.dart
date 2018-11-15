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
                   placeholder: "assets/loading.png",
                   image: media.getPosterUrl(),
                   //como se va desplegar la imagen dento de los diferentes espacio ubicados
                   fit: BoxFit.cover,
                   //definir el ancho de la imagen es inifito (ocupa todo el espacio
                   width: double.infinity,
                   //definir el tamaño de la imagen
                   height: 300.0,
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
                 ),
                 //crea otra posicioned para el texto dentro de la flanja
                 new Positioned(
                   left: 10.0,
                     //posicionar mientras que mas valor tenga se posiciona mas arriba de la flanja
                     bottom: 10.0,
                     child: new Column(
                       //comienza el eje transversal desde el comienzo
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: <Widget>[
                         new Container(
                           child: new Text(
                             media.title,
                             style: new TextStyle(
                               fontWeight: FontWeight.bold,
                               color: Colors.white,
                             ),
                           ),
                         ),
                         new Container(
                           padding: const EdgeInsets.only(top: 4.0),
                           child: new Text(
                             media.gender1,
                             style: new TextStyle(color: Colors.white),
                             //maxima de linea
                             maxLines: 1,
                             //si el texto cubre un limite muestra puntos souspensivos si es overflow
                             overflow: TextOverflow.ellipsis,
                           ),
                         )
                       ],
                     )
                 ),
               ],
            ),
          )
        ],
      ),
    );
  }
}