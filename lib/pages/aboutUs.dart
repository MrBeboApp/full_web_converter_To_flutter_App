import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:full_web_converter/utilites/toolsUtilities.dart';

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {

  //The controls of Text Editing
  TextEditingController nameTextControl = TextEditingController();
  TextEditingController phoneTextControl= TextEditingController();
  TextEditingController messageTitleTextControl= TextEditingController();
  TextEditingController contentTextControl= TextEditingController();
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
                    image: DecorationImage(image: NetworkImage(ToolsUtilities.contactUsHeaderImage),fit: BoxFit.cover),

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
                      child:Text("About Our Recipe Community ",style: TextStyle(color: ToolsUtilities.whiteColor,fontWeight: FontWeight.bold,fontSize: 30),),
                    ),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _aboutUsCard(),
                  _contactUSCard(),
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
                  child: Text(ToolsUtilities.infoParagraph,style: TextStyle(color:ToolsUtilities.secondColor,fontSize: 15,),textAlign: TextAlign.justify,
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
                  child: Text(ToolsUtilities.infoParagraph,style: TextStyle(color:ToolsUtilities.secondColor,fontSize: 15,),textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
        ),

      ],
    );
  }

  Widget _contactUSCard(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        //name Of our Company or Brand
        Padding(
          padding: const EdgeInsets.only(left:8.0,top:10),
          child: Text('Contact Us ',style: TextStyle(color:ToolsUtilities.mainColor,fontSize: 20,fontWeight: FontWeight.bold),textAlign:TextAlign.start,),
        ),
        custumTextField('Enter Your Name',nameTextControl,1),
        custumTextField('Enter Your Phone Number',phoneTextControl,1),
        custumTextField('Enter Your Message Title',messageTitleTextControl,1),
        custumTextField('Enter Your Message Content',contentTextControl,4),

        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Container(
            alignment: Alignment.bottomRight,
            width: MediaQuery.of(context).size.width * 0.65,
            child: RaisedButton(onPressed: (){},
              color: ToolsUtilities.mainColor,
              elevation: 5,
              child: FlatButton.icon(onPressed: (){


              }, icon: Icon(Icons.email,color: ToolsUtilities.whiteColor,), label: Text('Send Via Email',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: ToolsUtilities.whiteColor),)),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),


            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom:8.0,left: 10),
          child: Text('Follow Us ',style: TextStyle(color:ToolsUtilities.mainColor,fontSize: 15,fontWeight: FontWeight.bold),textAlign:TextAlign.start,),
        ),

        Padding(
          padding: const EdgeInsets.only(bottom:18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
           Icon(FontAwesomeIcons.facebook,color: ToolsUtilities.secondColor,),
           Icon(FontAwesomeIcons.twitter,color: ToolsUtilities.secondColor,),
           Icon(FontAwesomeIcons.instagram,color: ToolsUtilities.secondColor,),
           Icon(FontAwesomeIcons.pinterest,color: ToolsUtilities.secondColor,),
           Icon(FontAwesomeIcons.youtube,color: ToolsUtilities.secondColor,),
           Icon(FontAwesomeIcons.globe,color: ToolsUtilities.secondColor,),
           Icon(FontAwesomeIcons.snapchat,color: ToolsUtilities.secondColor,),

            ],
          ),
        ),

      ],
    );
  }


  Widget custumTextField(String hitName,TextEditingController textEditingControl,int maxLine){
    return Padding(
      padding: const EdgeInsets.only(right:30,left: 30,top: 8),
      child: Container(
          child: TextField(
            maxLines: maxLine,
            controller:textEditingControl,
            decoration: InputDecoration(
              hoverColor: ToolsUtilities.secondColor,
              focusColor: ToolsUtilities.secondColor,
              focusedBorder:OutlineInputBorder(
                borderSide: BorderSide(
                    color: ToolsUtilities.mainColor
                ),

              ),
              labelText: hitName,labelStyle: TextStyle(color: ToolsUtilities.secondColor),
            ),
          )),
    );
  }
}