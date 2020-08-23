import 'package:flutter/material.dart';
import 'package:full_web_converter/utilites/toolsUtilities.dart';

class DiscoveryPage extends StatefulWidget {
  @override
  _DiscoveryPageState createState() => _DiscoveryPageState();
}
class _DiscoveryPageState extends State<DiscoveryPage> {

  List favItem = [1,4,5];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ToolsUtilities.whiteColor,
      body: Stack(
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
