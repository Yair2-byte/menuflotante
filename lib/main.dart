import 'package:flutter/material.dart';
import 'package:menulateral/pages/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Home(),
    );
  }
}
class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
        padding: EdgeInsets.only(top: 15, bottom: 10.2) ,
        children: <Widget>[
          DrawerHeader(
            margin: EdgeInsets.only(top:15.0, bottom: 5.0),
            child: Text("Opciones",
            style: TextStyle(
            fontSize: 20.0, 
            fontWeight: FontWeight.bold),
          ),
          decoration: BoxDecoration(color: Colors.green, image: DecorationImage(fit:BoxFit.fill,
            image: AssetImage('imagenes/tux.jpg'))),
          ),
          ListTile(
            title: Text("Inicio"),
            leading: Icon(Icons.home),
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) =>Inicio()));},
          ),
          ListTile(
            title: Text("Catalogos"),
            leading: Icon(Icons.home),
            onTap: (){},
          ),
          ListTile(
            title: Text("FeedBack"),
            leading: Icon(Icons.home),
            onTap: (){},
          ),
          ListTile(
            title: Text("Logout"),
            leading: Icon(Icons.home),
            onTap: (){},
          ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Menu drawer'),
      ),
      body: const Center(
        child: Text('Hello World'),
      ),
    );
  }
}