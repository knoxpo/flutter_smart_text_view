# SmartTextView
The coolest, smartest TextView for Flutter.

## Features

- Simple text view
- LinkTextSpan
- Convert your normal text containing links or hash-tags to clickable

## Version compatability

See CHANGELOG for all breaking (and non-breaking) changes.

## Getting started

You should ensure that you add the router as a dependency in your flutter project.
```yaml
dependencies:
 smart_text_view: ^0.0.2
```


You should then run `flutter packages upgrade` or update your packages in IntelliJ.

## Example Project

There is a pretty sweet example project in the `example` folder. Check it out. Otherwise, keep reading to get up and running.

## Setting up

```dart
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
  );
```

<hr/>
SmartTextView is a Knoxpo original.
<br/>
<a href="https://knoxpo.com" target="_knoxpo">
<img src="https://www.knoxpo.com/assets/logo.png"
  width="60"></a>
