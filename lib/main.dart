
/*=============================================
=             START SECTION IMPORTS             =
=============================================*/
//°MATERIAL°//
import 'package:flutter/material.dart';
//°PAGES°//
import 'src/pages/home_page.dart';
import 'src/pages/settings_page.dart';
  
import 'package:preferencias_usuario_app/src/share_prefs/user_preferences.dart';

/*=====  END OF SECTION IMPORTS  ======*/
void main() async{  

  final prefs = new UserPreferences();
  //Don´t run the app unitil de preferences are load
  await prefs.initPrefs();



  runApp(MyApp());

} 



//=========== Start Class MyApp ==========s// 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'User Preferences',
      initialRoute: HomePage.routeName,
      routes: {
                             //(:)Aim                 //(=>)Return
        HomePage.routeName      : (BuildContext context) => HomePage(),
        SettingsPage.routeName  : (BuildContext context) => SettingsPage(),

      },
    );
  }
}