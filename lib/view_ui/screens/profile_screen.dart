import 'package:eshop/utils/locator.dart';
import 'package:eshop/utils/router.dart';
import 'package:flutter/material.dart';
import 'package:eshop/view_model/providers/shop_viewmodel.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  static const String id = 'ProfileScreen';
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
                      onTap: () {
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
                    Text(
                      'My Profile',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                        fontSize: 16,
                      ),
                    ),
                    Center(
                      child: Icon(
                        Icons.bookmarks_outlined,
                        size: 21,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.025,
                ),
                Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                            child: Stack(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.transparent,
                                  radius: 75,
                                  child: CircleAvatar(
                                    radius: 60,
                                    backgroundColor: Colors.blue.shade100,
                                    child:
                                    // Text('‍👪‍', style: TextStyle(fontSize: 55, color: Colors.grey),),
                                    Icon(Icons.person_rounded, size: 85,color: Colors.grey,),
                                  ),
                                ),
                                Positioned(
                                  bottom: 4,
                                  left: 0,
                                  right: 0,
                                  // top: 0,
                                  child: GestureDetector(
                                    onTap: (){},
                                    child: CircleAvatar(
                                      radius: 13,
                                      backgroundColor: Colors.blue,
                                      child: Icon(Icons.camera_alt_outlined, size: 17,color: Colors.white,),
                                    ),
                                  ),
                                )
                              ],
                            )),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'John Doe',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 17,
                          ),
                        ),
                      ],
                    )),
                Expanded(
                    flex: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Full Name',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins',
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white
                          ),
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.all(13.0),
                            child: Row(
                              children: [
                                Text(
                                  'John Doe',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Poppins',
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Text(
                          'Email Address',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 15,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white
                          ),
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.all(13.0),
                            child: Row(
                              children: [
                                Text(
                                  'johndoe2023@gmail.com',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Poppins',
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Text(
                          'Password',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 15,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white
                          ),
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.all(13.0),
                            child: Row(
                              children: [
                                Text(
                                  '***********',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Poppins',
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )),
                Expanded(flex: 3, child: SizedBox()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
