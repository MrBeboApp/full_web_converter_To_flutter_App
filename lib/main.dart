import 'package:flutter/material.dart';
import 'package:full_web_converter/pages/onBoarding.dart';
import 'package:full_web_converter/pages/starterPage.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences pref;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  pref = await SharedPreferences.getInstance();
  //Switch Function Between the Onboarding and HomePage
  // pref.setBool("seen", false);
  bool seen = pref.getBool('seen');
  Widget _screen;
  if(seen == null || seen == false){
    _screen = OnBoarding();
  } else {
    _screen = StarterPage();
  }

  runApp(MyApp(_screen));


}

class MyApp extends StatelessWidget {
  final Widget _screen;

  MyApp(this._screen);



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Web2App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: this._screen,
    );
  }
}
