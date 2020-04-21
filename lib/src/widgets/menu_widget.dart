/*=============================================
=             START SECTION - IMPORTS             =
=============================================*/
/*-- Independent Widget for the Drawer --*/
/*--
  To don't need to call every time the metod Widget _menuCreated() 
  at the home_page.dart and made a dirty code
--*/

/*----------  SUBSECTION | MATERIAL FILES   ----------*/
import 'package:flutter/material.dart';
/*----------  SUBSECTION | ROUTES PAGES  ----------*/
import 'package:preferencias_usuario_app/src/pages/home_page.dart';
import 'package:preferencias_usuario_app/src/pages/settings_page.dart';

/*=====  END OF SECTION IMPORTS  ======*/

/*-- Return all the drawer in the _menuCreated()  --*/
/*-- The MenuWidget is created to replace the metod _menuCreated() now deleted and pasted to this file--*/
class MenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children:  [
          DrawerHeader(
            child: Container(),
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/imgbg.jpg'),
                  fit: BoxFit.cover,
                )
            )
          ),
          ListTile(
            leading: Icon(Icons.pages, color: Colors.blue,),
            title: Text("Home"),
            onTap: () => Navigator.pushReplacementNamed(context, HomePage.routeName)
          ),
          
          ListTile(
            leading: Icon(Icons.party_mode, color: Colors.blue,),
            title: Text("Animals"),
            onTap: () {},
          ),

          ListTile(
            leading: Icon(Icons.party_mode, color: Colors.blue,),
            title: Text("Sounds"),
            onTap: () {},
          ),
          
          ListTile(
            leading: Icon(Icons.settings, color: Colors.blue,),
            title: Text("Settigns"),
            onTap: () => Navigator.pushReplacementNamed(context, SettingsPage.routeName),
            /*--
            //      Navigator.pop(context);
            //             //New property (pushReplacementNamed) what forces to make a unique page
            //              and delete the option to come back, functional for example, for logins
            //   Navigator.pushReplacementNamed(context, SettingsPage.routeName);
            // 
            --*/
           
          ),
        ],
      )
    );
  }
}