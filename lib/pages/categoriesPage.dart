
import 'package:flutter/material.dart';
import 'package:full_web_converter/pages/recipesPage.dart';
import 'package:full_web_converter/utilites/toolsUtilities.dart';

class CategoriesPage extends StatefulWidget {
  @override
  _CategoriesPageState createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
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
                  image: DecorationImage(image: NetworkImage(ToolsUtilities.ourCategoriesHeaderImage),fit: BoxFit.cover),

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
                    child:Text("Our Categories",style: TextStyle(color: ToolsUtilities.whiteColor,fontWeight: FontWeight.bold,fontSize: 30),),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 180),
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 10,left: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)),
                      color: ToolsUtilities.whiteColor

                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top:25.0),
                      child: GridView.count(crossAxisCount: 3,
                      shrinkWrap: true,
                        children: [
                          _categoryCard('Main',"assets/images/11.png",0),
                          _categoryCard('breakfast',"assets/images/5.png",1),
                          _categoryCard('Sweets',"assets/images/6.png",2),
                          _categoryCard('Fast Foods',"assets/images/7.png",3),
                          _categoryCard('Diet',"assets/images/8.png",4),
                          _categoryCard('Coffee',"assets/images/9.png",5),
                          _categoryCard('Salads',"assets/images/10.png",6),
                          _categoryCard('Pasta',"assets/images/4.png",7),
                          _categoryCard('Asian',"assets/images/12.png",8),

                        ],
                      ),
                    )
                  ),
                ),

              ],
            ),
          ),


        ],
      ),
    );
  }

  Widget _categoryCard(String categoryName,String imageAssetsName,int index) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 130,
            width:110,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: (index % 2) == 0?ToolsUtilities.mainColor:ToolsUtilities.mainColor.withOpacity(0.8),

            ),

          ),
          InkWell(
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => RecipesPage()));

            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(imageAssetsName,height: 80,width: 80,fit: BoxFit.cover,),
                Text(
                  categoryName,
                  style: TextStyle(
                      fontSize: 15,
                      color: ToolsUtilities.whiteColor,
                      fontWeight: FontWeight.bold),
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
