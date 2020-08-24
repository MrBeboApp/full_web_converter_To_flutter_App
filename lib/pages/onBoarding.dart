import 'package:flutter/material.dart';
import 'package:full_web_converter/main.dart';
import 'package:full_web_converter/pages/starterPage.dart';
import 'package:full_web_converter/utilites/onBoardingModel.dart';
import 'package:full_web_converter/utilites/toolsUtilities.dart';





List<OnBoardingModel> dataUtilits = [
  OnBoardingModel('All content will Appare from web as App','assets/images/2.png'),
  OnBoardingModel('Convert any website to app for ios and android','assets/images/1.png'),
  OnBoardingModel('Any Website Update will show immediately ','assets/images/3.png'),

];


class OnBoarding extends StatefulWidget {

  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {

  int currentIndex = 0;
  bool _reachatend = false;
  PageController _pageController;

  @override
  void initState() {
    // TODO: implement initState
    _pageController = PageController(
      initialPage: 0,
    );

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Flexible(
          child: PageView.builder(
              physics: ClampingScrollPhysics(),

              itemCount: dataUtilits.length,
              controller: _pageController,
              onPageChanged: (index){

                if (index == (dataUtilits.length - 1)) {
                  setState(() {
                    _reachatend = true;
                    currentIndex = index;

                  });
                } else {
                  setState(() {
                    _reachatend = false;
                    currentIndex = index;

                  });
                }

              },
              itemBuilder: (context,index) {
                return Scaffold(
                  backgroundColor:ToolsUtilities.mainColor,
                  appBar: AppBar(
                    actions: <Widget>[
                      RaisedButton(onPressed: (){},
                        color: Colors.transparent,
                        elevation: 0,
                        child: _reachatend ? InkWell(
                            onTap: (){
                              _updateSeen();

                              Navigator. pushReplacement(context, MaterialPageRoute(
                                  builder: (context) => StarterPage()));

                            },
                            child: Text('Start',style: TextStyle(color: ToolsUtilities.whiteColor,fontSize: 18),)) :InkWell(
                            onTap: (){
                              _updateSeen();
                              Navigator. pushReplacement(context, MaterialPageRoute(
                                  builder: (context) => StarterPage()));
                            },
                            child: Text('Skip',style: TextStyle(color: ToolsUtilities.whiteColor,fontSize: 18),))  ,

                      ),

                    ],
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                  ),

                  body: Padding(
                    padding: const EdgeInsets.only(top:48),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          _customImgBg(index,ToolsUtilities.whiteColor),


                          SizedBox(
                            height: 50,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Text(dataUtilits[index].title,style:TextStyle(color: ToolsUtilities.whiteColor,fontSize: 30,fontWeight: FontWeight.bold,),textAlign: TextAlign.center, ),
                          ),
                        ],



                      ),
                    ),
                  ),
                );

              }),
        ),
        Container(
          color: ToolsUtilities.mainColor,
          child: Transform.translate(
            offset: Offset(0,MediaQuery.of(context).size.height * - 0.15),
            child: Container(
              color:Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _drawDots(dataUtilits.length),
              ),
            ),
          ),
        ),
      ],
    );
  }
  //Create image with Different Bg Color
  Widget _customImgBg(int index,Color color ){
    return Container (
      width: 800,
      height: 350,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        image: DecorationImage(
            image: ExactAssetImage(dataUtilits[index].image),
            fit: BoxFit.contain
        ),
      ),
    );
  }
//Create list of draw Dots
  List<Widget> _drawDots(int quantity) {
    List<Widget> widgets = [];
    for(int index = 0; index < quantity ; index++){
      widgets.add(
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 30,
            height: 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: (index == currentIndex ) ? ToolsUtilities.secondColor : ToolsUtilities.whiteColor,

            ),
          ),
        ),

      );
    }
    return widgets;
  }

  void _updateSeen(){
    pref.setBool('seen', true);

  }


}
