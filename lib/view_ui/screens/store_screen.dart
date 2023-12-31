import 'dart:math';

import 'package:eshop/utils/locator.dart';
import 'package:eshop/utils/router.dart';
import 'package:eshop/view_ui/screens/bags_store_screen.dart';
import 'package:eshop/view_ui/screens/clothes_store_screen.dart';
import 'package:eshop/view_ui/screens/hats_store_screen.dart';
import 'package:eshop/view_ui/screens/shoes_store_screen.dart';
import 'package:eshop/view_ui/screens/watches_store_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({Key? key}) : super(key: key);
  static const String id = 'StoreScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height,
          child: Padding(
            padding: const EdgeInsets.only(
                top: 17.0, bottom: 10.0, right: 15.0, left: 15.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      child: Center(
                        child: Icon(
                          Icons.arrow_back_ios_new_rounded,
                          size: 15,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Text(
                      'My Shop',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                        fontSize: 16,
                      ),
                    ),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      child: Center(
                        child: Icon(
                          Icons.shopping_bag_outlined,
                          size: 25,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.025,
                ),
                Expanded(child: Column(
                  children: [
                    StoreWidget(color: Colors.pink, text: 'Watches Store', ontap: (){
                      locator<AppRouter>().router.push('/${WatchesStoreScreen.id}');
                    },),
                   StoreWidget(color: Colors.orange, text: 'Clothes Store',ontap: (){
                     locator<AppRouter>().router.push('/${ClothesStoreScreen.id}');
                   },),
                    StoreWidget(color: Colors.purple, text: 'Hats Store', ontap: (){
                      locator<AppRouter>().router.push('/${HatsStoreScreen.id}');
                    },),
                    StoreWidget(color: Colors.green, text: 'Bags Store', ontap: (){
                      locator<AppRouter>().router.push('/${BagsStoreScreen.id}');
                    },),
                    StoreWidget(color: Colors.indigoAccent, text: 'Shoes Store', ontap: (){
                      locator<AppRouter>().router.push('/${ShoesStoreScreen.id}');
                    },),
                  ],
                ),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class StoreWidget extends StatelessWidget {
  const StoreWidget({Key? key, required this.color, this.text, this.ontap}) : super(key: key);
 final Color color;
 final String? text;
 final VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: GestureDetector(
        onTap: ontap,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            // height: MediaQuery.sizeOf(context).height * 0.125,
            // width: double.infinity,
            // width: MediaQuery.sizeOf(context).width / 2,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(45),
                color: color,
            ),
            child: Center(child: Text(
              text ?? ' Unnamed Fashion Store',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins',
                fontSize: 15.3,
                fontStyle: FontStyle.italic
                // color: Colors.white
              ),
            ),),
          ),
        ),
      ),
    );
  }
}
