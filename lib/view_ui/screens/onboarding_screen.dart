import 'package:eshop/utils/locator.dart';
import 'package:eshop/utils/router.dart';
import 'package:eshop/view_model/providers/shop_viewmodel.dart';
import 'package:eshop/view_ui/custom_widgets/onboard_widget.dart';
import 'package:eshop/view_ui/screens/navigation_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

int currentIndex = 0;
class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);
  static const String id = 'OnboardingScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey.shade50,
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 15.0, right: 15.0, left: 15.0),
        child: PageView(
          children: [
            OnboardWidget(
              svgText: 'assets/svg/online_shopping.svg',
              headText: 'Start Journey \nWith eShop',
              subText: 'Smart, Gorgeous & Fashionable \ncollection',
              onPressed: (){
                locator<AppRouter>().router.push('/${NavigationScreen}');
              },
            ),
            OnboardWidget(
              svgText: 'assets/svg/window_shopping.svg',
              headText: 'Follow Latest \nStyle Shoes',
              subText: 'Your one-stop store to get \nawesome stylish shoes...',
              onPressed: (){
                locator<AppRouter>().router.push('/${NavigationScreen}');
              },
            ),
            OnboardWidget(
              svgText: 'assets/svg/shopping_bags.svg',
              buttonText: 'Get Started',
              headText: 'Summer Clothes \nDior 2023',
              subText: 'Shop for your fashionable \ncollections with us today!',
              onPressed: (){
                locator<AppRouter>().router.push('/${NavigationScreen}');
              },
            ),
          ],
          onPageChanged: (index){
            Provider.of<ShopViewModel>(context, listen: false).onboardingCurrentIndex = index;
          },
          // physics: const BouncingScrollPhysics(),
        ),
      )),
    );
  }
}

