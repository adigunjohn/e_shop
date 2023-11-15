import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopViewModel extends ChangeNotifier {
  int _onboardingCurrentIndex = 0;
 int get onboardingCurrentIndex => _onboardingCurrentIndex;
 set onboardingCurrentIndex(int? newIndex){
  _onboardingCurrentIndex = newIndex as int;
  notifyListeners();
}

 /// works for the nav_bar
 int _pageviewCurrentIndex = 0;
 int get pageviewCurrentIndex => _pageviewCurrentIndex;
 set pageviewCurrentIndex( int? newIndex){
  _pageviewCurrentIndex = newIndex as int;
  notifyListeners();
 }

}