import 'package:eshop/utils/locator.dart';
import 'package:eshop/utils/router.dart';
import 'package:flutter/material.dart';
import 'package:eshop/view_model/providers/shop_viewmodel.dart';
import 'package:provider/provider.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);
  static const String id = 'NotificationScreen';
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
                    GestureDetector(
                      onTap: (){
                        locator<AppRouter>().router.pop();
                      },
                      child: CircleAvatar(
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
                    ),
                    SizedBox(width: 0.1,),
                    Center(
                      child: Text(
                        'Notifications',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Text(
                      'Clear All',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins',
                        fontSize: 15.5,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.025,
                ),
                Expanded(
                    child: Column()
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
