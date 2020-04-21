import 'package:shared_preferences/shared_preferences.dart';



class UserPreferences {
  
   static final UserPreferences _instance = new UserPreferences._internal();
    
    factory UserPreferences(){
      return _instance;  

    }

   UserPreferences._internal();

   SharedPreferences _prefs;
  
  initPrefs() async {
    this._prefs = await SharedPreferences.getInstance();
  }

   //Nothing of this propeties can be used
   //Properties that are going to be stored to this class (UserPreferences)
  // bool _secondaryColor;
  // int _gender;
  // String _name;


  // GET and Set GENDER
  get gender{
    return _prefs.getInt('gender') ?? 1;
  }

  set gender( int value ){
    _prefs.setInt('gender', value);
  }


 }