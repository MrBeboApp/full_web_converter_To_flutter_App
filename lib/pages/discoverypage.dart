
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:full_web_converter/utilites/toolsUtilities.dart';
import 'package:webview_flutter/webview_flutter.dart';


class DiscoveryPage extends StatefulWidget {
  @override
  _DiscoveryPageState createState() => _DiscoveryPageState();
}
class _DiscoveryPageState extends State<DiscoveryPage> with TickerProviderStateMixin  {
  TabController _controller;

  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();

  void getMessage(){
    _firebaseMessaging.configure(
        onMessage: (Map<String, dynamic> message) async {
          print('on message $message');
        }, onResume: (Map<String, dynamic> message) async {
      print('on resume $message');
    }, onLaunch: (Map<String, dynamic> message) async {
      print('on launch $message');
    });
  }



  @override
  void initState() {
    super.initState();
    _controller =  TabController(length: 2, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[

        Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.21,
              width: double.infinity,
              decoration: BoxDecoration(
                color: ToolsUtilities.mainColor,
                image: DecorationImage(image: NetworkImage(ToolsUtilities.discoveryImageHeader),fit: BoxFit.cover),

              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 00.0, right: 10, left: 10),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.21,
              width: double.infinity,
              decoration: BoxDecoration(
                color: ToolsUtilities.secondColor.withOpacity(0.4),

              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 00.0, right: 10, left: 10),
                child:_customHeading(),
              ),
            ),
          ],
        ),


        Padding(
          padding: const EdgeInsets.only(right:20.0,left:20),
          child: Container(
            color: ToolsUtilities.whiteColor,
            child: SizedBox(
              height: 2,
            ),
          ),
        ),
        Container(
          decoration:  BoxDecoration(
              gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [ToolsUtilities.mainColor, ToolsUtilities.secondColor])
          ),

          child:  TabBar(
            indicatorColor: ToolsUtilities.whiteColor,
            controller: _controller,
            tabs: [
              Tab(
                icon: const Icon(Icons.lightbulb_outline),
                text: 'Top New',
              ),
              Tab(
                icon: const Icon(Icons.video_call),
                text: 'Top Videos',
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(

            color: ToolsUtilities.whiteColor,
            height: MediaQuery.of(context).size.height * 0.9,
            child: new TabBarView(
              controller: _controller,
              children: <Widget>[
                Container(
                  height:100,
                  child: WebView(
                    initialUrl: ToolsUtilities.homePageUrl,
                    javascriptMode: JavascriptMode.unrestricted,

                  ),
                ),
                Container(
                  height:100,

                  child: WebView(

                    initialUrl: ToolsUtilities.videoPageUrl,
                    javascriptMode: JavascriptMode.unrestricted,
                  ),
                ),
              ],
            ),
          ),
        ),

      ],
    );
  }


  Widget _customHeading() {
    return Padding(
      padding: const EdgeInsets.only(top:60.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Text('Daily New Stories',style: TextStyle(fontSize: 15,color: ToolsUtilities.whiteColor,)),
          Text('Discovery Now',style: TextStyle(fontSize: 30,color: ToolsUtilities.whiteColor,fontWeight: FontWeight.bold),),

      ],
      ),
    );
  }

}
