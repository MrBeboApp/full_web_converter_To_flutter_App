import 'package:flutter/material.dart';
import 'package:full_web_converter/utilites/toolsUtilities.dart';
import 'package:webview_flutter/webview_flutter.dart';

final webViewKey = GlobalKey<WebViewContainerState>();

class SingleCategoryPage extends StatefulWidget {
 final  String categoryUrl ;
 final String categoryName;

 SingleCategoryPage(this.categoryUrl, this.categoryName);

  @override
  SingleCategoryPageState createState() => SingleCategoryPageState();
}

class SingleCategoryPageState extends State<SingleCategoryPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.categoryName),
        backgroundColor: ToolsUtilities.mainColor,
        centerTitle: false,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              // using currentState with question mark to ensure it's not null
              webViewKey.currentState?.reloadWebView();
            },
          )
        ],
      ),
      body: WebViewContainer(widget.categoryUrl,key: webViewKey),
    );
  }
}

class WebViewContainer extends StatefulWidget {
  final String categoryUrl;
  WebViewContainer(this.categoryUrl,{Key key}) : super(key: key);

  @override
  WebViewContainerState createState() => WebViewContainerState();
}

class WebViewContainerState extends State<WebViewContainer> {
  WebViewController _webViewController;

  @override
  Widget build(BuildContext context) {
    return WebView(
      onWebViewCreated: (controller) {
        _webViewController = controller;
      },
      initialUrl:widget.categoryUrl,
      javascriptMode: JavascriptMode.unrestricted,
    );
  }

  void reloadWebView() {
    _webViewController?.reload();
    print(widget.categoryUrl);
  }
}
