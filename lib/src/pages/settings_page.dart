/*=============================================
=             START SECTION - IMPORTS             =
=============================================*/

/*----------  SUBSECTION | MATERIAL FILES   ----------*/
import 'package:flutter/material.dart';
/*----------  SUBSECTION | ROUTES PAGES  ----------*/
import 'package:preferencias_usuario_app/src/widgets/menu_widget.dart';
/*----------  SUBSECTION | PACKAGE: PREFERENCES  ----------*/
import 'package:shared_preferences/shared_preferences.dart';
/*=====  END OF SECTION IMPORTS  ======*/

/*=============================================
=         HEADER SECTION | SettingsPage       =
=============================================*/
class SettingsPage extends StatefulWidget {
  
   static final String routeName = 'settings';

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

  /*----------  START SUBSECTION | PROPERTIES  ----------*/
  bool _secondaryColor = false;
  int _gender = 1;
  String _name = "TonyTheDev";

  /*-- TextEditinController --*/
  TextEditingController _textController;
  /*--
    Remember that StatefullWidget in his lifecycle has
    a part called "initState()"
  --*/
  /*-- This is going to execute before the build --*/
  @override
  void initState() { 
    super.initState();
    //Metod
    _loadDataGender();
    /* This _textController most be asociated to the Container:TextField()*/
    _textController = new TextEditingController(text: _name);
  }

  //Metod
  _loadDataGender() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _gender = prefs.getInt('gender');
    setState(() {});
  }


  _setSelectedRadio( int value ) async {
    //Instance (prefs)
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //Property
        //(.)for save data in the setInt and other values 
                //Name of the Key
    prefs.setInt('gender', value);
    _gender = value;
    setState(() {});

  }

  /*----------  END SUBSECTION | PROPERTIES  ----------*/


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"), 
      ),
      drawer: MenuWidget(),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(5.0),
            child: Text("Settings", style: TextStyle(fontSize: 45.0, fontWeight: FontWeight.bold)),
          ),
          Divider(),

          /*-- _SecondaryColor --*/
          SwitchListTile(
            value: _secondaryColor, 
            title: Text("Secondary Color"),
            /*-- To make Switch work, the class will need to be extend by a StatefullWidget and 
            create the property --*/
            onChanged: ( /*bool*/change ){
              /* "setState()"  To apply o re-writte */
              setState(() {
                _secondaryColor = change;
              });
             },
          ),

          RadioListTile(
            /*-- Value ID --*/
            value: 1, 
            title: Text("Male"),
            groupValue: _gender, 
            /*-- To make this work, the class will need to be extend by a StatefullWidget nd 
            create the property --*/
            onChanged: _setSelectedRadio,
            //Without passing data
            /*( /*int*/ tap ){
              setState(() {
                _gender = tap;
              });
            }*/
                   
            ),
          /*-- Value ID --*/
          RadioListTile(
            value: 2, 
            title: Text("Female"),
            groupValue: _gender,
            onChanged: _setSelectedRadio,
            ),

          Divider(),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              /*The call of the initiState of _textController*/ 
              controller: _textController,
              decoration: InputDecoration(
                labelText: "Name",
                helperText: "Name of the person who use this Telphone",
              ),
              /*-- To know what the person wrote --*/
              /*-- To this don't exist a direct way to make the strings appears pre charged to the field --*/
              /*So in the properties Section is one way to do this*/
              onChanged: (/*String*/ tap ) {

               },
            ),
          ),

        ],
      )
    );
  }
}