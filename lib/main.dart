import 'package:eshop/utils/apptheme.dart';
import 'package:eshop/utils/locator.dart';
import 'package:eshop/utils/router.dart';
import 'package:eshop/view_model/providers/shop_viewmodel.dart';
import 'package:eshop/view_model/providers/theme_viewmodel.dart';
import 'package:eshop/view_model/providers/products_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() {
  setupLocator();
  runApp(const MyEShopApp());
}

class MyEShopApp extends StatelessWidget {
  const MyEShopApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ShopViewModel>(create: (_) => ShopViewModel()),
        ChangeNotifierProvider<ThemeViewModel>(create: (_) => ThemeViewModel()),
        ChangeNotifierProvider<ProductsViewModel>(create: (_) => ProductsViewModel()),
        // ChangeNotifierProvider<ProductsViewModell>(create: (_) => ProductsViewModell()),
      ],
      builder: (context, child){
      return MaterialApp.router(
        routerConfig: locator<AppRouter>().router,
        // routerConfig: AppRouter().router,
        // title: 'Flutter Demo',
        // theme: locator<AppTheme>().lightTheme,
        darkTheme: locator<AppTheme>().darkTheme,
        // themeMode: locator<AppTheme>().themeMode,
        // themeMode: MediaQuery.platformBrightnessOf(context) == Brightness.light ? ThemeMode.light : ThemeMode.dark,
       themeMode: context.watch<ThemeViewModel>().setAppThemeMode,
        ///themeMode: context.watch<ThemeViewModel>().getAdaptTheme == true ? ThemeMode.system : ThemeMode.light,
        theme: context.read<ThemeViewModel>().setAppThemeData,
        /// theme: context.watch<ThemeViewModel>().getThemebool == true ? locator<AppTheme>().darkTheme : locator<AppTheme>().lightTheme,
        // theme: ThemeData(
        //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        //   useMaterial3: true,
        // ),
        // home: SplashScreen(),
      );}
    );
  }
}
