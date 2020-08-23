import 'package:flutter/material.dart';
import 'package:full_web_converter/utilites/toolsUtilities.dart';

class DiscoveryPage extends StatefulWidget {
  @override
  _DiscoveryPageState createState() => _DiscoveryPageState();
}
class _DiscoveryPageState extends State<DiscoveryPage> with SingleTickerProviderStateMixin  {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller =  TabController(length: 2, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
          children: <Widget>[

            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.30,
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
                  height: MediaQuery.of(context).size.height * 0.30,
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
              decoration:  BoxDecoration(color: ToolsUtilities.mainColor),

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
            Container(
              color: ToolsUtilities.mainColor,
              height: MediaQuery.of(context).size.height * 0.5,
              child: new TabBarView(
                controller: _controller,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      child: Text("Home page")
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      child: Text("youtube Channel"),
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
    );
  }


  Widget _customHeading() {
    return Padding(
      padding: const EdgeInsets.only(top:60.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Text('Daily New Watches',style: TextStyle(fontSize: 15,color: ToolsUtilities.whiteColor,)),
          Text('Discovery',style: TextStyle(fontSize: 30,color: ToolsUtilities.whiteColor,fontWeight: FontWeight.bold),),

      ],
      ),
    );
  }
}
