
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:full_web_converter/pages/videoPage.dart';
import 'dart:math';

import 'package:full_web_converter/utilites/toolsUtilities.dart';


class SingleRecipePage extends StatefulWidget {
  @override
  _SingleRecipePageState createState() => new _SingleRecipePageState();
}

class _SingleRecipePageState extends State<SingleRecipePage> with SingleTickerProviderStateMixin {
  TabController _controller;
  int indexImg;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 3, vsync: this);

    var rng = new Random();
    for (var i = 0; i < 10; i++) {
      indexImg = rng.nextInt(ToolsUtilities.imageFeaturedUrls.length);
    }
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: ToolsUtilities.mainColor,
      body:  ListView(
        children: <Widget>[
          Stack(
            children: [


              Container(
                height: MediaQuery.of(context).size.height * 0.30,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: ToolsUtilities.mainColor,
                  image: DecorationImage(image: NetworkImage(ToolsUtilities.imageFeaturedUrls[indexImg]),fit: BoxFit.cover),

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
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 100.0, right: 10, left: 10),
                    child:Text("The Recipe Title",style: TextStyle(color: ToolsUtilities.whiteColor,fontWeight: FontWeight.bold,fontSize: 30),),
                  ),
                ),
              ),

              AppBar(
                title: Text(''),
                backgroundColor: Colors.transparent,
                elevation: 0,
                actions: [
                  InkWell(
                    onTap: (){

                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top:20.0,right: 20),
                      child: Icon(Icons.favorite,color: ToolsUtilities.whiteColor,size: 30,),
                    ),
                  ),
                ],
              ),
            ],
          ),

           Container(
             height: 80,
             color: ToolsUtilities.mainColor,
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 Container(
                   width: 80,
                   height: 80,
                   decoration: BoxDecoration(
                     color: ToolsUtilities.mainColor,
                     shape: BoxShape.circle

                   ),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       Icon(FontAwesomeIcons.clock,color: ToolsUtilities.whiteColor,),
                       SizedBox(height: 6,),
                       Text(" 60 Mins",style: TextStyle(color: ToolsUtilities.whiteColor,fontWeight: FontWeight.bold,fontSize: 15,),textAlign: TextAlign.center,),
                     ],
                   ),
                 ),
                 Container(
                   width: 80,
                   height: 80,

                   decoration: BoxDecoration(
                       color: ToolsUtilities.mainColor,
                       shape: BoxShape.circle

                   ),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.center,

                     children: [
                       Icon(Icons.people,color: ToolsUtilities.whiteColor),
                       SizedBox(height: 6,),
                       Text(" 4 People",style: TextStyle(color: ToolsUtilities.whiteColor,fontWeight: FontWeight.bold,fontSize: 15),textAlign: TextAlign.center,),
                     ],
                   ),
                 ),
                 Container(
                   width: 80,
                   height: 80,
                   decoration: BoxDecoration(
                       color: ToolsUtilities.mainColor,
                       shape: BoxShape.circle

                   ),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.center,

                     children: [
                       Icon(Icons.room_service,color: ToolsUtilities.whiteColor),
                       Text("  40 Mins",style: TextStyle(color: ToolsUtilities.whiteColor,fontWeight: FontWeight.bold,fontSize: 15),textAlign: TextAlign.center,),
                     ],
                   ),
                 ),
               ],
             ),
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
                  icon: const Icon(Icons.description),
                  text: 'Description',
                ),
                 Tab(
                  icon: const Icon(Icons.fastfood),
                  text: 'Integrations',
                ),
                Tab(
                  icon: const Icon(Icons.videocam),
                  text: 'Video',
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
                     child: Card(
                       color: ToolsUtilities.whiteColor.withOpacity(0.6),
                      child:  Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top:8.0,bottom: 10,),
                              child: Text (
                                "Let`s Cooking: " ,style: TextStyle(color: ToolsUtilities.mainColor,fontSize: 20,fontWeight: FontWeight.bold),

                              ),
                            ),
                            Text (
                              ToolsUtilities.infoParagraph + "\n \n" +ToolsUtilities.infoParagraph,style: TextStyle(color: ToolsUtilities.secondColor,fontSize: 15,),textAlign: TextAlign.justify,

                            ),
                          ],
                        ),
                      ),
                ),
                   ),
                 ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Card(
                      color: ToolsUtilities.whiteColor.withOpacity(0.6),
                      child:  Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top:8.0,bottom: 10,),
                              child: Text (
                                "You will need:" ,style: TextStyle(color: ToolsUtilities.mainColor,fontSize: 25,fontWeight: FontWeight.bold),

                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Card(
                                color: ToolsUtilities.mainColor,
                                child: Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Text (
                                    ToolsUtilities.integrationsInfo,style: TextStyle(color: ToolsUtilities.whiteColor,fontSize: 20,),textAlign: TextAlign.justify,

                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _videoCard(),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }

  Widget _videoCard() {
    return Padding(
      padding: const EdgeInsets.only(top: 3),
      child: InkWell(
        onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => VideoPreviewPage()));

        },
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage(ToolsUtilities.imageFeaturedUrls[indexImg]),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              FlatButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    FontAwesomeIcons.playCircle,
                    color: ToolsUtilities.whiteColor,
                    size: 80,
                  ),
                  label: Text(''))
            ],
          ),
        ),
      ),
    );
  }
}
