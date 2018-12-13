import 'package:flutter/material.dart';
import 'package:smart_text_view/smart_text_view.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Text View',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Smart Text View'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Scaffold key to locate the widget you need to test
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[
          SmartText(
            text:
            'Hi, this is an example for link example http://www.google.com',
            onOpen: (url) async {
              _scaffoldKey.currentState.showSnackBar(
                SnackBar(
                  content: ListTile(
                    title: Text('Link is clicked!'),
                    subtitle: Text(url),
                  ),
                ),
              );
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
          ),
          SmartText(
            text:
            'Hi, this is an example for hashtag example #helloWorld',
            onTagClick: (tag) {
              _scaffoldKey.currentState.showSnackBar(
                SnackBar(
                  content: ListTile(
                    title: Text('Tag is clicked!'),
                    subtitle: Text(tag),
                  ),
                ),
              );
            },
          ),
          SmartText(
            text:
            'Hi, this is an example for both link example http://www.google.com and hashtag example #helloWorld',
            onOpen: (url) async {
              _scaffoldKey.currentState.showSnackBar(
                SnackBar(
                  content: ListTile(
                    title: Text('Link is clicked!'),
                    subtitle: Text(url),
                  ),
                ),
              );
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            onTagClick: (tag) {
              _scaffoldKey.currentState.showSnackBar(
                SnackBar(
                  content: ListTile(
                    title: Text('Tag is clicked!'),
                    subtitle: Text(tag),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
