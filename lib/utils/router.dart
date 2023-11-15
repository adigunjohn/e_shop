import 'package:eshop/model/services/navigation_service.dart';
import 'package:eshop/utils/locator.dart';
import 'package:eshop/view_ui/screens/home_screen.dart';
import 'package:eshop/view_ui/screens/navigation_screen.dart';
import 'package:eshop/view_ui/screens/splash_screen.dart';
import 'package:eshop/view_ui/screens/onboarding_screen.dart';
import 'package:eshop/view_ui/screens/fav_screen.dart';
import 'package:eshop/view_ui/screens/store_screen.dart';
import 'package:eshop/view_ui/screens/profile_screen.dart';
import 'package:eshop/view_ui/screens/account_settings_screen.dart';
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
        GoRoute(path: '/${AccountSettingsScreen.id}',
        builder: (_, GoRouterState state) {
          return const AccountSettingsScreen();
        })
      ]);
}
// GoRoute(
// path: '/sample',
// builder: (context, state) {
// Sample sample = state.extra as Sample; // 👈 casting is important
// return GoToScreen(object: sample);
// },
// ),