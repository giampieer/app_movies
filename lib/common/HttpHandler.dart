//llamamos variables dart
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:movies_app/model/Media.dart';

class HttpHandler {
  String _baseUrl = 'movies.vrammdev.com';
  Future<dynamic>getJson(Uri uri) async{
    http.Response response = await http.get(uri);
    //llamamos el objetivo json de dart   y decodificar
    return json.decode(response.body);
  }
  /*Future<String> fetchMovies(){
    // se concatena la url base , el endpoint (lo restante de la url) y los parametros
    var uri = new Uri.http( _baseUrl , '', {
      'op' : '3',
    });
    //print(uri);
    //then recibimos el resultado o un error
    return getJson(uri).then(((data) => data.toString()));
  }*/

  //agregamos el objeto Media
  Future<List<Media>> fetchMovies(){
    // se concatena la url base , el endpoint (lo restante de la url) y los parametros
    var uri = new Uri.http( _baseUrl , '', {
      'op' : '3',
    });
    //print(uri);
    //retornar una list de obetos Media
    return getJson(uri).then(((data) =>
    //accedemos el json que esta  dentro del json  movies y creamos un objeto  Media
        data['movies'].map<Media>((item) => new Media(item)).toList()
    ));
  }
}