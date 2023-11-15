import 'package:eshop/view_model/providers/shop_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomNavBarWidget extends StatelessWidget {
  const CustomNavBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ShopViewModel>(builder: (_, model, child) {
      var _currentIndex = model.pageviewCurrentIndex;
      return Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(27.0), topRight: Radius.circular(27.0)),
          // color: Colors.grey.shade200,
          // color: Colors.transparent,
          // color: Colors.green
        ),
        child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 0, bottom: 13.0, right: 13.0, left: 13.0),
              child: Material(
                borderRadius: BorderRadius.circular(27.0),
                elevation: 3,
                child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height * 0.08,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    // color: Colors.black54
                    color: Colors.white
                    // border: Border.all(color: Colors.blue, width: 2, style: BorderStyle.solid),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                          onTap: (){
                            model.pageviewCurrentIndex = 0;
                          },
                          child: Icon(Icons.home_outlined, color: _currentIndex == 0 ? Colors.blue : Colors.black,
                            size: _currentIndex == 0 ? 26 : 24,)),
                      GestureDetector(
                          onTap: (){
                            model.pageviewCurrentIndex = 1;
                          },
                          child: Icon(Icons.favorite_border_rounded, color: _currentIndex == 1 ? Colors.blue : Colors.black,
                            size: _currentIndex == 1 ? 26 : 24,)),
                      GestureDetector(
                        onTap: (){
                          model.pageviewCurrentIndex = 2;
                        },
                        child: CircleAvatar(
                          radius: _currentIndex == 2 ? 26 : 24,
                          backgroundColor: Colors.blue,
                          child: Icon(Icons.shopping_basket_outlined, color: Colors.white, size: _currentIndex == 2 ? 30 : 25,),),),
                      GestureDetector(
                          onTap: (){
                            model.pageviewCurrentIndex = 3;
                          },
                          child: Icon(Icons.add_shopping_cart_outlined, color: _currentIndex == 3 ? Colors.blue : Colors.black,
                            size: _currentIndex == 3 ? 26 : 24,)),
                      GestureDetector(
                          onTap: (){
                            model.pageviewCurrentIndex = 4;
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 4.0),
                            child: Icon(Icons.settings_suggest_outlined, color: _currentIndex == 4 ? Colors.blue : Colors.black,
                              size: _currentIndex == 4 ? 28 : 26,),
                          )),
                    ],
                  ),
                ),
              ),
            )),
      );
    });
  }
}
