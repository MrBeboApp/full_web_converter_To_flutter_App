
import 'package:flutter/material.dart';
import 'package:full_web_converter/pages/singleCategoryPage.dart';
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
                    padding: const EdgeInsets.only(top: 30.0, right: 10, left: 10),
                    child:Text("Our Categories",style: TextStyle(color: ToolsUtilities.whiteColor,fontWeight: FontWeight.bold,fontSize: 30),),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Padding(
              padding: const EdgeInsets.only(right: 10,left: 10,),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)),
                  color: ToolsUtilities.whiteColor

                ),
                child: GridView.count(crossAxisCount: 2,
                shrinkWrap: true,
                  children: [
                    _categoryCard(ToolsUtilities.categoriesNames[0],ToolsUtilities.categoriesIcons[0],ToolsUtilities.categoriesNames[0],ToolsUtilities.categoriesUrls[0],0),
                    _categoryCard(ToolsUtilities.categoriesNames[1],ToolsUtilities.categoriesIcons[1],ToolsUtilities.categoriesNames[1],ToolsUtilities.categoriesUrls[1],1),
                    _categoryCard(ToolsUtilities.categoriesNames[2],ToolsUtilities.categoriesIcons[2],ToolsUtilities.categoriesNames[2],ToolsUtilities.categoriesUrls[2],2),
                    _categoryCard(ToolsUtilities.categoriesNames[3],ToolsUtilities.categoriesIcons[3],ToolsUtilities.categoriesNames[3],ToolsUtilities.categoriesUrls[3],3),
                    _categoryCard(ToolsUtilities.categoriesNames[4],ToolsUtilities.categoriesIcons[4],ToolsUtilities.categoriesNames[4],ToolsUtilities.categoriesUrls[4],4),
                    _categoryCard(ToolsUtilities.categoriesNames[5],ToolsUtilities.categoriesIcons[5],ToolsUtilities.categoriesNames[5],ToolsUtilities.categoriesUrls[5],5),

                  ],
                )
              ),
            ),
          ),


        ],
      ),
    );
  }

  Widget _categoryCard(String categoryName,IconData icon,String indexCategory,String categoryUrl,int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(

        alignment: Alignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(30)),
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [ToolsUtilities.mainColor, ToolsUtilities.secondColor])),
            height: 150,
            width:150,

            ),
          InkWell(
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SingleCategoryPage(categoryUrl,indexCategory)));

            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(icon,color: ToolsUtilities.whiteColor,size: 60,),
                SizedBox(height: 10,),
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
