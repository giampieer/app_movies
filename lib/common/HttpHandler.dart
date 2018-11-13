//llamamos variables dart
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class HttpHandler {
  String _baseUrl = "http://movies.vrammdev.com";
  Future<dynamic>getJson(Uri uri) async{
    http.Response response = await http.get(uri);
    //llamamos el objetivo json de dart   y decodificar
    return json.decode(response.body).toString();
  }
  Future<String> fetchMovies(){
    // se concatena la url base , el endpoint (lo restante de la url) y los parametros
    var uri = new Uri.http( _baseUrl , '', {
      'op' : '3',
    });
    //print(uri);
    //then recibimos el resultado o un error
    return getJson(uri).then(((data) => data.toString()));
  }
}