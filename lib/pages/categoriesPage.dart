
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:full_web_converter/pages/allPostsPage.dart';
import 'package:full_web_converter/utilites/toolsUtilities.dart';

class CategoriesPage extends StatefulWidget {
  @override
  _CategoriesPageState createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ToolsUtilities.redColor,
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
            padding: const EdgeInsets.only(top: 180),
            child: Padding(
              padding: const EdgeInsets.only(right: 10,left: 10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)),
                  color: ToolsUtilities.whiteColor

                ),
                child: GridView.count(crossAxisCount: 2,
                shrinkWrap: true,
                  children: [
                    _categoryCard(ToolsUtilities.categoriesNames[0],ToolsUtilities.categoriesIcons[0],0),
                    _categoryCard(ToolsUtilities.categoriesNames[1],ToolsUtilities.categoriesIcons[1],1),
                    _categoryCard(ToolsUtilities.categoriesNames[2],ToolsUtilities.categoriesIcons[2],2),
                    _categoryCard(ToolsUtilities.categoriesNames[3],ToolsUtilities.categoriesIcons[3],3),
                    _categoryCard(ToolsUtilities.categoriesNames[4],ToolsUtilities.categoriesIcons[4],4),
                    _categoryCard(ToolsUtilities.categoriesNames[5],ToolsUtilities.categoriesIcons[5],5),

                  ],
                )
              ),
            ),
          ),


        ],
      ),
    );
  }

  Widget _categoryCard(String categoryName,IconData icon,int index) {
    return Stack(
      
      alignment: Alignment.center,
      children: [
        Container(
          height: 150,
          width:150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: (index % 2) == 0?ToolsUtilities.mainColor:ToolsUtilities.mainColor.withOpacity(0.8),

          ),

        ),
        InkWell(
          onTap: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => AllPostsPage()));

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
    );
  }
}
