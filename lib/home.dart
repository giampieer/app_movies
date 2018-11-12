import 'package:flutter/material.dart';
import 'package:movies_app/common/HttpHandler.dart';
class Home  extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
  }
  class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    _loadJson();
  }
  _loadJson() async {
    String data = await HttpHandler().ListMovies();
    print(data);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Movies"),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.search, color: Colors.white,),
            onPressed: () {},
          )
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new DrawerHeader(child: new Material()),
            new ListTile(
                title: new Text("Peliculas"),
                trailing: new Icon(Icons.local_movies)
            ),
            new Divider(
              height: 5.0,
            ),
            new ListTile(
                title: new Text("Television"),
                trailing: new Icon(Icons.live_tv)
            ),
            new ListTile(
              title: new Text("Cerrar"),
              trailing: new Icon(Icons.live_tv),
              onTap: () => Navigator.of(context).pop(),
            )
          ],
        )
      ),
      bottomNavigationBar: new BottomNavigationBar(items: _getFooterItems()
      ),
    );
  }
  //Creacion de Tabs
  List<BottomNavigationBarItem>_getFooterItems(){
    return [
      new BottomNavigationBarItem(
          icon: new Icon(Icons.thumb_up),title: new Text("Populares")
      ),
      new BottomNavigationBarItem(
          icon: new Icon(Icons.update),title: new Text("Proximo")
      ),
      new BottomNavigationBarItem(
          icon: new Icon(Icons.star),title: new Text("Mejor")
      )
    ];
  }
}
