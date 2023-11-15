import 'package:eshop/utils/locator.dart';
import 'package:eshop/utils/router.dart';
import 'package:eshop/view_ui/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:eshop/view_model/providers/products_viewmodel.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static const String id = 'SplashScreen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pushFromSplashScreen();
  }

  void pushFromSplashScreen() {
    Future.delayed(const Duration(seconds: 6), () {
      locator<AppRouter>().router.replace('/${OnboardingScreen.id}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Center(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text('e',
                    textScaleFactor: 1,
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                        fontStyle: FontStyle.italic)),
                Text('Shop',
                    textScaleFactor: 1,
                    style: GoogleFonts.poppins(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 38,
                        fontStyle: FontStyle.italic)),
                const SizedBox(
                  width: 5.0,
                ),
                // Icon(Icons.shopping_basket, color: Colors.white, size: 30.0,),
                const Icon(
                  Icons.shopping_basket,
                  color: Colors.blueAccent,
                  size: 30.0,
                ),
              ],
            ),
          ],
        )),
      )),
    );
  }
}
