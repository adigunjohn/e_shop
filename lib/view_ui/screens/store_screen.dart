import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({Key? key}) : super(key: key);
  static const String id = 'StoreScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            height: 200,
            width: 200,
            color: Colors.white,
            child: Stack(
              children: [
                Positioned(
                  right: 30,
                  top: 30,
                  child: Container(
                    height: 10,
                    width: 10,
                    color: Colors.blue,
                  ),
                ),
                Container(
                  height: 100,
                  width: 180,
                  color: Colors.black38,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 15,
                      width: 15,
                      color: Colors.red,
                    ),
                  ),
                ),
                Container(
                  height: 10,
                  width: 10,
                  color: Colors.black,
                ),
                Positioned(
                  left: 0,
                  bottom: 0,
                  child: Container(
                    height: 10,
                    width: 10,
                    color: Colors.purple,
                  ),
                ),
              ],
            ),
          ),
        )
        // Center(
        //   child: Text('This is STORE screen'),
        // ),
      ),
    );
  }
}
