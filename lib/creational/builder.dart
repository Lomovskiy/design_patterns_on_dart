class Screen {

  String _title;
  String _body;
  String _footer;

  Screen(ScreenBuilder builder) {
    _title = builder._title;
    _body = builder._body;
    _footer = builder._footer;
  }

  @override
  String toString() {
    return 'title: $_title, body: $_body, footer: $_footer';
  }

}
class ScreenBuilder {

  String _title;
  String _body;
  String _footer;

  ScreenBuilder setTitle(String title) {
    _title = title;
    return this;
  }

  ScreenBuilder setBody(String body) {
    _body = body;
    return this;
  }
  ScreenBuilder setFooter(String footer) {
    _footer = footer;
    return this;
  }


  Screen build() {
    return Screen(this);
  }

}