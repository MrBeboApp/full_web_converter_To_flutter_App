import 'package:flutter/material.dart';
import 'package:full_web_converter/pages/singleRecipePage.dart';
import 'package:full_web_converter/utilites/toolsUtilities.dart';

class FavouritesPage extends StatefulWidget {
  @override
  _FavouritesPageState createState() => _FavouritesPageState();
}

class _FavouritesPageState extends State<FavouritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ToolsUtilities.whiteColor,
      appBar: AppBar(
        title: Text('My Favourites Recipe '),
        backgroundColor: ToolsUtilities.mainColor,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 5,
          itemBuilder: (context,index){

          return _favouriteCard(ToolsUtilities.imageFeaturedUrls[index]);

      }),
    );
  }

  Widget _favouriteCard(String imageUrl) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: ToolsUtilities.redColor,
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
                        builder: (context) => SingleRecipePage()));
              },
              child: Container(
                height: MediaQuery.of(context).size.height * 0.3,
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
              height: MediaQuery.of(context).size.height * 0.1,
              decoration: BoxDecoration(
                  color: ToolsUtilities.whiteColor
              ),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
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
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:15.0),
                          child: Text(
                            "Small description for this Recipe",
                            style: TextStyle(
                              fontSize: 15,
                              color: ToolsUtilities.secondColor,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom:4.0),
                          child: Icon(Icons.favorite,color: ToolsUtilities.redColor,size: 30,),
                        ),
                      ],
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
