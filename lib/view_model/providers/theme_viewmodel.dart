import 'package:eshop/utils/apptheme.dart';
import 'package:eshop/utils/locator.dart';
import 'package:flutter/material.dart';


 class ThemeViewModel extends ChangeNotifier {
  ///for theme toggle
  bool _themebool = false;
  bool get getThemebool => _themebool;
  set setThemebool (bool val){
   _themebool = val;
   notifyListeners();
  }

  ///for adaptive theme
  bool _adaptiveTheme = false;
  bool get getAdaptTheme => _adaptiveTheme;
  set setAdaptTheme (bool vall){
   _adaptiveTheme = vall;
   notifyListeners();
  }
ThemeData get setAppThemeData{
  if(_themebool == false){
    return locator<AppTheme>().lightTheme;
  }
  else{return locator<AppTheme>().darkTheme;}
  notifyListeners();
}
ThemeMode get setAppThemeMode {
    if (_adaptiveTheme == false){
      return ThemeMode.light;
    }
    else{return ThemeMode.system;}
}
 }