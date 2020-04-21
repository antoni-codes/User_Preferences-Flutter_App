/*=============================================
=             START SECTION - IMPORTS             =
=============================================*/

/*----------  SUBSECTION | MATERIAL FILES   ----------*/
import 'package:flutter/material.dart';
import 'package:preferencias_usuario_app/src/share_prefs/user_preferences.dart';
/*----------  SUBSECTION | ROUTES PAGES  ----------*/
import 'package:preferencias_usuario_app/src/widgets/menu_widget.dart';

/*=====  END OF SECTION IMPORTS  ======*/


class HomePage extends StatelessWidget {
  
   static final String routeName = 'home';

  @override
  Widget build(BuildContext context) {

    final prefs = new UserPreferences();

    return Scaffold(
      appBar: AppBar(
        title: Text("User Preferences"), 
      ),
      //WIDGET: LATERAL BAR MENU
      drawer: MenuWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Secondary color "),
          Divider(),
          Text("Gender ${ prefs.gender}"),
          Divider(),
          Text("User Name"),
          Divider(),
        ]
      ) ,
    );
  }

/*-- Widget  to display de lateral Menu --*/
  // Drawer _menuCreated(BuildContext context){
  //   return Drawer(
  //     child: ListView(
  //       padding: EdgeInsets.zero,
  //       children:  [
  //         DrawerHeader(
  //           child: Container(),
  //           decoration: BoxDecoration(
  //               image: DecorationImage(
  //                 image: AssetImage('assets/imgbg.jpg'),
  //                 fit: BoxFit.cover,
  //               )
  //           )
  //         ),
  //         ListTile(
  //           leading: Icon(Icons.pages, color: Colors.blue,),
  //           title: Text("Home"),
  //           onTap: () => Navigator.pushReplacementNamed(context, HomePage.routeName)
  //         ),
          
  //         ListTile(
  //           leading: Icon(Icons.party_mode, color: Colors.blue,),
  //           title: Text("Animals"),
  //           onTap: () {},
  //         ),

  //         ListTile(
  //           leading: Icon(Icons.party_mode, color: Colors.blue,),
  //           title: Text("Sounds"),
  //           onTap: () {},
  //         ),
          
  //         ListTile(
  //           leading: Icon(Icons.settings, color: Colors.blue,),
  //           title: Text("Settigns"),
  //           onTap: () => Navigator.pushReplacementNamed(context, SettingsPage.routeName),
  //              /*--
  //           //      Navigator.pop(context);
  //           //             //New property (pushReplacementNamed) what forces to make a unique page
  //           //              and delete the option to come back, functional for example, for logins
  //           //   Navigator.pushReplacementNamed(context, SettingsPage.routeName);
  //           // 
  //           --*/
  //         ),
  //       ],
  //     )
  //   );
  // }




}

