import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';



void  customURlLaunch(command) async {
  if (await canLaunch(command)) {
    await launch(command);
  } else {
    print('could not launch $command');
  }
}

class ToolsUtilities {

 // static final mainColor = Color(0xffdc3636);
  static final whiteColor = Color(0xffffffff);
  static final mainColor = Color(0xff1c2541);
  static final redColor = Color(0xffdc3636);
  static final secondColor = Color(0xff090b10);

  //edit the Urls of Web Sites
  static final homePageUrl = "https://www.apple.com/watch/";
  static final videoPageUrl = "https://www.youtube.com/coodesapp";
  static final allPageUrl = "https://codecanyon.net/category/all";
  static final firstCategoryPageUrl = "https://codecanyon.net/category/mobile";
  static final secondCategoryPageUrl = "https://codecanyon.net/category/php-scripts";
  static final thirdCategoryPageUrl = "https://codecanyon.net/category/plugins";
  static final fourthCategoryPageUrl = "https://codecanyon.net/category/javascript";
  static final fifthCategoryPageUrl = "https://codecanyon.net/category/wordpress/ecommerce/woocommerce";
  static final sixthCategoryPageUrl = "https://videohive.net/?auto_signin=true&_ga=2.212782612.104259428.1598206012-1321168733.1593072656";

  //edit the social media Links
  static final facebookUrl = "https://www.facebook.com/";
  static final twitterUrl = "https://twitter.com/home";
  static final instagramUrl = "https://www.instagram.com/";
  static final snapchatUrl = "https://ads.snapchat.com/";
  static final websiteUrl = "https://coodes.org/";
  static final pintrestUrl = "https://www.pinterest.com/homefeed/";
  static final youtubeUrl = "https://www.youtube.com/";

//Add your Email
  static final email = "info@coodes.org";

  //The Url Function that open any Url

  static List categoriesNames = [
    "Mobile",
    "Scripts",
    "Plugins",
    "Javascript",
    "Ecommerce ",
    "Videohive ",
  ];

  static List categoriesUrls = [
    firstCategoryPageUrl,
    secondCategoryPageUrl,
    thirdCategoryPageUrl,
    fourthCategoryPageUrl,
    fifthCategoryPageUrl,
    sixthCategoryPageUrl,


  ];

  static List categoriesIcons = [
 FontAwesomeIcons.mobile,
 FontAwesomeIcons.scribd,
 FontAwesomeIcons.laptop,
 FontAwesomeIcons.tv,
 FontAwesomeIcons.cartPlus,
 FontAwesomeIcons.video,

  ];
  static String discoveryImageHeader = 'https://images.unsplash.com/photo-1504610926078-a1611febcad3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2200&q=80';
  static String contactUsHeaderImage = 'https://images.unsplash.com/photo-1560438718-eb61ede255eb?ixlib=rb-1.2.1&auto=format&fit=crop&w=1900&q=80';
  static String infoHeaderImage = 'https://images.unsplash.com/photo-1511370235399-1802cae1d32f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60';
  static String ourCategoriesHeaderImage = "https://images.unsplash.com/photo-1542317854-f9596ae570f7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE3MzYxfQ&auto=format&fit=crop&w=3300&q=80";
  static String visionImage = "https://images.unsplash.com/photo-1522115174737-2497162f69ec?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60";
  static String missionImage = "https://images.unsplash.com/photo-1584208124888-3a20b9c799e2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60";
  static String infoParagraph = "Lorem ipsum, or lipsum as it is sometimes known is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown ty Malorum for use in a type specimen book. Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter: ";

}