import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:full_web_converter/utilites/toolsUtilities.dart';

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ToolsUtilities.whiteColor,
      body: SingleChildScrollView(

        child:Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.30,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: ToolsUtilities.mainColor,
                    image: DecorationImage(image: NetworkImage(ToolsUtilities.infoHeaderImage),fit: BoxFit.cover),

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
                      child:Text("About Our Watches ",style: TextStyle(color: ToolsUtilities.whiteColor,fontWeight: FontWeight.bold,fontSize: 30),),
                    ),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:20,bottom:8.0,left: 10),
                    child: Text('Follow Us ',style: TextStyle(color:ToolsUtilities.mainColor,fontSize: 15,fontWeight: FontWeight.bold),textAlign:TextAlign.start,),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(bottom:18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap:(){
                            customURlLaunch(ToolsUtilities.facebookUrl);
                          },
                            child: Icon(FontAwesomeIcons.facebook,color: ToolsUtilities.secondColor,)),
                        InkWell(
                          onTap:(){
                            customURlLaunch(ToolsUtilities.twitterUrl);
                          },
                            child: Icon(FontAwesomeIcons.twitter,color: ToolsUtilities.secondColor,)),
                        InkWell(
                            onTap:(){
                              customURlLaunch(ToolsUtilities.youtubeUrl);
                            },
                            child: Icon(FontAwesomeIcons.youtube,color: ToolsUtilities.secondColor,)),
                        InkWell(
                            onTap:(){
                              customURlLaunch(ToolsUtilities.snapchatUrl);
                            },
                            child: Icon(FontAwesomeIcons.snapchat,color: ToolsUtilities.secondColor,)),

                        InkWell(
                            onTap:(){
                              customURlLaunch(ToolsUtilities.instagramUrl);
                            },
                            child: Icon(FontAwesomeIcons.instagram,color: ToolsUtilities.secondColor,)),
                        InkWell(
                            onTap:(){
                              customURlLaunch(ToolsUtilities.pintrestUrl);
                            },
                            child: Icon(FontAwesomeIcons.pinterest,color: ToolsUtilities.secondColor,)),
                        InkWell(
                            onTap:(){
                              customURlLaunch(ToolsUtilities.websiteUrl);
                            },
                            child: Icon(FontAwesomeIcons.globe,color: ToolsUtilities.secondColor,)),



                      ],
                    ),
                  ),
                  _aboutUsCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


  //Create about Us Card
  Widget _aboutUsCard() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        //name Of our Company or Brand
        Padding(
          padding: const EdgeInsets.only(left:8.0),
          child: Text('We here For You ',style: TextStyle(color:ToolsUtilities.mainColor,fontSize: 20,fontWeight: FontWeight.bold),),
        ),
        //name Of our Vision or Brand

        Padding(
          padding: const EdgeInsets.only(left:8.0,top: 18),
          child: Text('Our Vision ',style: TextStyle(color:ToolsUtilities.mainColor,fontSize: 16,fontWeight: FontWeight.bold),),
        ),
        Padding(
          padding: const EdgeInsets.only(top:4.0,left:8,right: 8),
          child: Card(
            child: Column(
              children: [
                Container(
                  height: 150,
                  width: 400,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(ToolsUtilities.visionImage),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(ToolsUtilities.infoParagraphVision,style: TextStyle(color:ToolsUtilities.secondColor,fontSize: 15,),textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
        ),

        //Our Mission
        Padding(
          padding: const EdgeInsets.only(left:8.0,top: 10),
          child: Text('Our Mission ',style: TextStyle(color:ToolsUtilities.mainColor,fontSize: 16,fontWeight: FontWeight.bold),),
        ),
        Padding(
          padding: const EdgeInsets.only(top:4.0,left:8,right: 8),
          child: Card(
            child: Column(
              children: [

                Container(
                  height: 150,
                  width: 400,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(ToolsUtilities.missionImage),
                      fit: BoxFit.cover,
                    ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(ToolsUtilities.infoParagraphMission,style: TextStyle(color:ToolsUtilities.secondColor,fontSize: 15,),textAlign: TextAlign.justify,
                  ),
                ),

              ],
            ),
          ),
        ),

      ],
    );
  }





}