import 'package:flutter/material.dart';
import 'package:full_web_converter/pages/singleRecipePage.dart';
import 'package:full_web_converter/utilites/toolsUtilities.dart';

class RecipesPage extends StatefulWidget {
  @override
  _RecipesPageState createState() => _RecipesPageState();
}

class _RecipesPageState extends State<RecipesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ToolsUtilities.whiteColor,
      appBar: AppBar(
        title: Text('Recipes'),
        backgroundColor: ToolsUtilities.mainColor,
        centerTitle: true,

      ),
      body: Container(


        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)),
                      color: ToolsUtilities.whiteColor

                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top:18.0),
                    child: GridView.count(crossAxisCount: 2,
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      children: [
                        _recipeCard(ToolsUtilities.imageFeaturedUrls[0]),
                        _recipeCard(ToolsUtilities.imageFeaturedUrls[1]),
                        _recipeCard(ToolsUtilities.imageFeaturedUrls[2]),
                        _recipeCard(ToolsUtilities.imageFeaturedUrls[3]),
                        _recipeCard(ToolsUtilities.imageFeaturedUrls[4]),
                        _recipeCard(ToolsUtilities.imageFeaturedUrls[5]),
                        _recipeCard(ToolsUtilities.imageFeaturedUrls[6]),
                        _recipeCard(ToolsUtilities.imageFeaturedUrls[0]),

                      ],
                    ),
                  )
              ),
            ),

          ],
        ),
      ),
    );
  }

  Widget _recipeCard(String imageUrl) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SingleRecipePage()));
        },

        child: Container(
          decoration: BoxDecoration(
            color: ToolsUtilities.secondColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(imageUrl),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width * 0.60,
                decoration: BoxDecoration(
                  color: ToolsUtilities.secondColor.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      "The Recipe Title",
                      style: TextStyle(
                          fontSize: 20,
                          color: ToolsUtilities.whiteColor,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Padding(
                          padding: const EdgeInsets.only(left:8.0),
                          child: Text(
                            "Category",
                            style: TextStyle(
                              fontSize: 15,
                              color: ToolsUtilities.whiteColor,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right:4.0),
                          child: Icon(Icons.favorite,color: ToolsUtilities.whiteColor,size: 20,),
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
}
