# SmartTextView
The coolest, smartest TextView for Flutter.

[![Version](https://img.shields.io/badge/version-0.1.0-blue.svg)](https://pub.dartlang.org/packages/smart_text_view)
[![pub package](https://img.shields.io/pub/v/smart_text_view.svg)](https://pub.dartlang.org/packages/smart_text_view)

[Pub](https://pub.dartlang.org/packages/smart_text_view) - [API Docs](https://pub.dartlang.org/documentation/smart_text_view/latest/) - [GitHub](https://github.com/knoxpo/smart_text_view)

## Features

- Simple text view
- LinkTextSpan
- Convert your normal text containing links or hash-tags to clickable

## Version compatibility

See CHANGELOG for all breaking (and non-breaking) changes.

## Getting started

You should ensure that you add the router as a dependency in your flutter project.
```yaml
dependencies:
 smart_text_view: ^0.1.0
```


You should then run `flutter packages upgrade` or update your packages in IntelliJ.

## Example Project

There is a pretty sweet example project in the `example` folder. Check it out. Otherwise, keep reading to get up and running.

## Setting up

```dart
  SmartText(
    text:
        'Hi, this is an example for both link example http://www.google.com and hashtag example #helloWorld @knoxpo',
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
    onUserTagClick: (tag){
      _scaffoldKey.currentState.showSnackBar(
        SnackBar(
          content: ListTile(
            title: Text('User tag clicked!'),
            subtitle: Text(tag),
          ),
        ),
      );
    }
  );
```

``
THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL KNOXPO BE LIABLE FOR ANY
DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
``

<hr/>
SmartTextView is a Knoxpo original.
<br/>
<a href="https://knoxpo.com" target="_knoxpo">
<img src="https://www.knoxpo.com/assets/logo.png"
  width="60"></a>
