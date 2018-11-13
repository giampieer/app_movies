//llamamos variables dart
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class HttpHandler {
  String _baseUrl = "http://movies.vrammdev.com";
  final String _lenguaje = "";
  Future<dynamic>getJson(Uri uri) async{
    http.Response response = await http.get(uri);
    //llamamos el obejto json de dart   y decodificar
    return json.decode(response.body).toString();
  }
  Future<String> fetchMovies(){
    // se concatena la url base , el endpoint (lo restante de la url) y los parametros
    var uri = new Uri.http( 'movies.vrammdev.com', '', {
      'op' : '3',
    });
    print(uri);
    //then recivimos el resultado o un error
    return getJson(uri).then(((data) => data.toString()));
  }
}