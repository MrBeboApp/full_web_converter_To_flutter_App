import 'package:flutter/material.dart';
import 'package:full_web_converter/pages/recipesPage.dart';
import 'package:full_web_converter/pages/singleRecipePage.dart';
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
          Padding(
            padding: const EdgeInsets.only(top: 180),
            child: ListView(
              children: <Widget>[
                Container(child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text("Featured Receipts",style: TextStyle(color: ToolsUtilities.secondColor,fontWeight: FontWeight.bold,fontSize: 20),),
                ),color: ToolsUtilities.whiteColor,),
                Container(
                  color: ToolsUtilities.whiteColor,
                  height: 300,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: ToolsUtilities.imageFeaturedUrls.length,
                    itemBuilder: (context,index){
                      return _featuredCard(ToolsUtilities.imageFeaturedUrls[index],index);
                    },

                  ),
                ),
                Container(child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text("New ",style: TextStyle(color: ToolsUtilities.secondColor,fontWeight: FontWeight.bold,fontSize: 20),),
                ),color: ToolsUtilities.whiteColor,),
                Container(
                  margin: EdgeInsets.all(10),
                  color: ToolsUtilities.whiteColor,
                  height:220,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: ToolsUtilities.imageNewUrls.length,
                    itemBuilder: (context,index){
                      return _newCard(ToolsUtilities.imageNewUrls[index]);
                    },

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

          Text('Daily New Recipe',style: TextStyle(fontSize: 15,color: ToolsUtilities.whiteColor,)),
          Text('Discovery',style: TextStyle(fontSize: 30,color: ToolsUtilities.whiteColor,fontWeight: FontWeight.bold),),

      ],
      ),
    );
  }

  Widget _featuredCard(String imageUrl,index) {
    return Padding(
      padding: const EdgeInsets.only(right: 15, left: 5, top: 5),
      child: InkWell(
        onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SingleRecipePage()));
        },


        child: Container(
          height: MediaQuery.of(context).size.height * 0.6,
          width: MediaQuery.of(context).size.width * 0.44,
          decoration: BoxDecoration(
            color: ToolsUtilities.mainColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[

              Container(
                height: MediaQuery.of(context).size.height * 0.6,
                width: MediaQuery.of(context).size.width * 0.44,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(imageUrl),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.6,
                width: MediaQuery.of(context).size.width * 0.44,
                decoration: BoxDecoration(
                  color: ToolsUtilities.secondColor.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: InkWell(
                  onTap: (){

                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right:4.0),
                    child: Icon( Icons.favorite,color: favItem.contains(index) ? ToolsUtilities.redColor : ToolsUtilities.whiteColor,size: 40,),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      "The Recipte Title",
                      style: TextStyle(
                          fontSize: 20,
                          color: ToolsUtilities.whiteColor,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right:4.0),
                          child: Icon(Icons.local_dining,color: ToolsUtilities.whiteColor,size: 20,),
                        ),
                        Text(
                          "Category",
                          style: TextStyle(
                              fontSize: 15,
                              color: ToolsUtilities.whiteColor,
                              ),
                        ),
                      ],
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
}

Widget _newCard(String imageUrl) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        decoration: BoxDecoration(
          color: ToolsUtilities.mainColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            InkWell(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RecipesPage()));
              },
              child: Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width * 0.80,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(imageUrl),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.060,
              width: MediaQuery.of(context).size.width * 0.80,
              decoration: BoxDecoration(
                color: ToolsUtilities.whiteColor
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left:5.0),
                      child: Text(
                        "The Recipe Title",
                        style: TextStyle(
                            fontSize: 17,
                            color: ToolsUtilities.secondColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left:15.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right:4.0),
                            child: Icon(Icons.timer,color: ToolsUtilities.secondColor,size: 15,),
                          ),
                          Text(
                            "60 Minutes",
                            style: TextStyle(
                              fontSize: 15,
                              color: ToolsUtilities.secondColor,
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),


          ],
        ),
      ),
    );
}
}
