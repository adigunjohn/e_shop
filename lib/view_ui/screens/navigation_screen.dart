import 'package:eshop/view_model/providers/shop_viewmodel.dart';
import 'package:eshop/view_ui/custom_widgets/custom_navbar_widget.dart';
import 'package:eshop/view_ui/screens/account_settings_screen.dart';
import 'package:eshop/view_ui/screens/cart_screen.dart';
import 'package:eshop/view_ui/screens/home_screen.dart';
import 'package:eshop/view_ui/screens/fav_screen.dart';
import 'package:eshop/view_ui/screens/store_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({Key? key}) : super(key: key);
 static const String id = 'NavigationScreen';

  @override
  Widget build(BuildContext context) {
    return Consumer<ShopViewModel>(builder: (_, model, child){
      return Scaffold(
        body: IndexedStack(
          index: model.pageviewCurrentIndex,
          children:  [
            HomeScreen(),
            const FavScreen(),
            const StoreScreen(),
            const CartScreen(),
            const AccountSettingsScreen(),
          ],
        ),
        bottomNavigationBar: const CustomNavBarWidget(),
        // bottomNavigationBar: BottomNavigationBar(
        //   currentIndex: currentIndex,
        //   onTap: (index){
        //     setState(() {
        //       currentIndex = index;
        //     });
        //   },
        //   items: [
        //     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        //     BottomNavigationBarItem(icon: Icon(Icons.add_shopping_cart), label: 'Cart'),
        //   ],
        // ),
      );}
    );
  }
}
