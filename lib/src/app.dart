
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {

  Drawer getDrawer(BuildContext context){
    ListTile getItem(Icon icon, String description, String route){
      return ListTile(
        leading: icon,
        title: Text(description),
        onTap: () {
          Navigator.pushNamed(context, route);
        },
      );
    }
    ListView getList(){
      return ListView(
        children: <Widget>[
            getItem(Icon(Icons.settings), "Configuración", '/settings'),
            getItem(Icon(Icons.home), "Home", '/'),
        ],
      );
    }
    return Drawer(child: getList());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stock Lab"),),
      drawer: getDrawer(context),
    );
  }
}