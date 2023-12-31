import 'dart:developer';

import 'package:eshop/model/services/navigation_service.dart';
import 'package:eshop/utils/locator.dart';
import 'package:eshop/view_ui/screens/product_screen.dart';
import 'package:flutter/material.dart';
import 'package:eshop/view_model/providers/products_viewmodel.dart';
import 'package:provider/provider.dart';
import 'package:eshop/view_ui/custom_widgets/image_widget.dart';
import 'package:eshop/view_ui/custom_widgets/fav_screen_widget.dart';


// class FavScreen extends StatelessWidget {
//   const FavScreen({Key? key}) : super(key: key);
//   static const String id = 'FavScreen';
//   @override
//   Widget build(BuildContext context) {
//     return Consumer<ProductsViewModel>(builder: (_, model, child) {
//       return Scaffold(
//         body: SafeArea(
//           child: SizedBox(
//             height: MediaQuery.sizeOf(context).height,
//             child: Padding(
//               padding: const EdgeInsets.only(
//                   top: 17.0, bottom: 10.0, right: 15.0, left: 15.0),
//               child: Column(
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       CircleAvatar(
//                         radius: 20,
//                         backgroundColor: Colors.white,
//                         child: Center(
//                           child: Icon(
//                             Icons.arrow_back_ios_new_rounded,
//                             size: 15,
//                             color: Colors.black,
//                           ),
//                         ),
//                       ),
//                       Text(
//                         'Favourite',
//                         style: TextStyle(
//                           fontWeight: FontWeight.w500,
//                           fontFamily: 'Poppins',
//                           fontSize: 16,
//                         ),
//                       ),
//                       CircleAvatar(
//                         radius: 20,
//                         backgroundColor: Colors.white,
//                         child: Center(
//                           child: Icon(
//                             Icons.favorite_border_outlined,
//                             size: 21,
//                             color: Colors.black,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: MediaQuery.sizeOf(context).height * 0.025,
//                   ),
//                   model.favourites.length == 0
//                       ? Expanded(
//                         child: Align(
//                     alignment: Alignment.center,
//                           child: Text(
//                             'No favourites yet,\nclick on 💙 button to \nadd new Fashion Items.',
//                             style: TextStyle(
//                                 // color: Colors.blue,
//                                 fontFamily: 'Poppins',
//                                 fontSize: 13),
//                           ),
//                         ),
//                       )
//                       : Expanded(
//                           child: GridView.builder(
//                             gridDelegate:
//                                 SliverGridDelegateWithFixedCrossAxisCount(
//                               crossAxisCount: 2,
//                               mainAxisSpacing: 15,
//                               crossAxisSpacing: 15,
//                               // childAspectRatio: 0.7 ,
//                               mainAxisExtent:
//                                   MediaQuery.sizeOf(context).height *
//                                       0.275, //220
//                             ),
//                             physics: BouncingScrollPhysics(),
//                             itemCount: model.favourites.length,
//                             itemBuilder: (_, index) {
//                               var fav = model.favourites[index];
//                               return FavScreenProductCard(
//                                 nameText: fav[1],
//                                   priceText: fav[2],
//                                   onTap: (){
//                                 model.removeItemsFromFavourites(index);
//                               }, imageText: fav[3]);
//                             },
//                           ),
//                         ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       );
//     });
//   }
// }
//






////////////////////////////////////////////////






class FavScreen extends StatelessWidget {
  const FavScreen({Key? key}) : super(key: key);
  static const String id = 'FavScreen';
  @override
  Widget build(BuildContext context) {
    return Consumer<ProductsViewModell>(builder: (_, model, child) {
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
                        'Favourite',
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
                            Icons.favorite_border_outlined,
                            size: 21,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.025,
                  ),
                  model.favourites.length == 0
                      ? Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'No favourites yet,\nclick on 💙 button to \nadd new Fashion Items.',
                        style: TextStyle(
                          // color: Colors.blue,
                            fontFamily: 'Poppins',
                            fontSize: 13),
                      ),
                    ),
                  )
                      : Expanded(
                    child: GridView.builder(
                      gridDelegate:
                      SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 15,
                        crossAxisSpacing: 15,
                        // childAspectRatio: 0.7 ,
                        mainAxisExtent:
                        MediaQuery.sizeOf(context).height *
                            0.275, //220
                      ),
                      physics: BouncingScrollPhysics(),
                      itemCount: model.favourites.length,
                      itemBuilder: (_, index) {
                        var fav = model.favourites[index];
                        return FavScreenProductCard(
                            nameText: fav.name.toString(),
                            priceText: fav.price.toString(),
                            cartOnTap: (){
                              model.addToCart(fav);
                            },
                            imageOnTap: (){
                              locator<NavigationService>().push(ProductScreen(product: fav,));
                            },
                            onTap: (){
                              // model.removeItemsFromFavourites(Product(id: fav.id, name: fav.name, image: fav.image, price: fav.price), index);
                              // model.removeItemsFromFavouritesss(Product(id: fav.id, name: fav.name, image: fav.image, price: fav.price));
                              // model.removeFav(index, Product(id: fav.id, name: fav.name, image: fav.image, price: fav.price));
                              model.removeItemsFromFavouritesss(fav);
                            }, imageText: fav.image.toString());
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
