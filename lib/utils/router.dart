import 'package:eshop/model/services/navigation_service.dart';
import 'package:eshop/utils/locator.dart';
import 'package:eshop/view_ui/screens/bags_store_screen.dart';
import 'package:eshop/view_ui/screens/checkout_screen.dart';
import 'package:eshop/view_ui/screens/clothes_store_screen.dart';
import 'package:eshop/view_ui/screens/hats_store_screen.dart';
import 'package:eshop/view_ui/screens/home_screen.dart';
import 'package:eshop/view_ui/screens/navigation_screen.dart';
import 'package:eshop/view_ui/screens/notification_screen.dart';
import 'package:eshop/view_ui/screens/product_screen.dart';
import 'package:eshop/view_ui/screens/shoes_store_screen.dart';
import 'package:eshop/view_ui/screens/splash_screen.dart';
import 'package:eshop/view_ui/screens/onboarding_screen.dart';
import 'package:eshop/view_ui/screens/fav_screen.dart';
import 'package:eshop/view_ui/screens/store_screen.dart';
import 'package:eshop/view_ui/screens/profile_screen.dart';
import 'package:eshop/view_ui/screens/account_settings_screen.dart';
import 'package:eshop/view_ui/screens/watches_store_screen.dart';
import 'package:go_router/go_router.dart';

///locator<AppRouter>().router.push('/${SignUpScreen.id}');

class AppRouter {

  GoRouter router = GoRouter(
      navigatorKey: locator<NavigationService>().navigatorKey,
      debugLogDiagnostics: true,
      // errorPageBuilder: (context,_){
      //   return ShellRoute();
      // },
      // initialLocation: '/${FilterScreen.id}/comedian',
      initialLocation: '/${SplashScreen.id}',
      routes: [
        GoRoute(
          path: '/${SplashScreen.id}',
          builder: (context, GoRouterState state) {
            return const SplashScreen();
          },
        ),
        GoRoute(
          path: '/${NavigationScreen.id}',
          builder: (context, GoRouterState state) {
            return const NavigationScreen();
          },
        ),
        GoRoute(
          path: '/${HomeScreen.id}',
          builder: (context, GoRouterState state) {
            // return const HomeScreen();
            return HomeScreen();
          },
        ),
        GoRoute(path: '/${OnboardingScreen.id}',
        builder: (_, GoRouterState state){
          return const OnboardingScreen();
        },),
        GoRoute(path: '/${FavScreen.id}',
          builder: (_, GoRouterState state){
            return const FavScreen();
          },),
        GoRoute(path: '/${StoreScreen.id}',
          builder: (_, GoRouterState state){
            return const StoreScreen();
          },),
        GoRoute(path: '/${ProfileScreen.id}',
        builder: (_, GoRouterState state){
          return const ProfileScreen();
        }),
        GoRoute(path: '/${ProductScreen.id}',
            builder: (_, GoRouterState state){
              return const ProductScreen();
            }),
        GoRoute(path: '/${NotificationScreen.id}',
            builder: (_, GoRouterState state){
              return const NotificationScreen();
            }),
        GoRoute(path: '/${AccountSettingsScreen.id}',
        builder: (_, GoRouterState state) {
          return const AccountSettingsScreen();
        }),
        GoRoute(path: '/${WatchesStoreScreen.id}',
            builder: (_, GoRouterState state) {
              return const WatchesStoreScreen();
            }),
        GoRoute(path: '/${ClothesStoreScreen.id}',
            builder: (_, GoRouterState state) {
              return const ClothesStoreScreen();
            }),
        GoRoute(path: '/${BagsStoreScreen.id}',
            builder: (_, GoRouterState state) {
              return const BagsStoreScreen();
            }),
        GoRoute(path: '/${ShoesStoreScreen.id}',
            builder: (_, GoRouterState state) {
              return const ShoesStoreScreen();
            }),
        GoRoute(path: '/${HatsStoreScreen.id}',
            builder: (_, GoRouterState state) {
              return const HatsStoreScreen();
            }),
        GoRoute(path: '/${CheckoutScreen.id}',
            builder: (_, GoRouterState state) {
              return const CheckoutScreen();
            }),
      ]);
}
// GoRoute(
// path: '/sample',
// builder: (context, state) {
// Sample sample = state.extra as Sample; // 👈 casting is important
// return GoToScreen(object: sample);
// },
// ),