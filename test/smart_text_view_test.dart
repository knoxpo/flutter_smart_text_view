import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:smart_text_view/smart_text_view.dart';

void main() {
  testWidgets('my first widget test', (WidgetTester tester) async {
    // Scaffold key to locate the widget you need to test
    GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    // Tells the tester to build a UI based on the widget tree passed to it
    await tester.pumpWidget(
      StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
          return MaterialApp(
            home: Scaffold(
              key: _scaffoldKey,
              appBar: AppBar(
                title: Text("Smart Text View"),
              ),
              body: ListView(
                children: <Widget>[
                  SmartText(
                    text:
                        'Hi, this is an example for link example http://www.google.com',
                    onOpen: (url) {
                      _scaffoldKey.currentState.showSnackBar(
                        SnackBar(
                          content: ListTile(
                            title: Text('Link is clicked!'),
                            subtitle: Text(url),
                          ),
                        ),
                      );
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
                    onOpen: (url) {
                      _scaffoldKey.currentState.showSnackBar(
                        SnackBar(
                          content: ListTile(
                            title: Text('Link is clicked!'),
                            subtitle: Text(url),
                          ),
                        ),
                      );
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
            ),
          );
        },
      ),
    );
  });
}
