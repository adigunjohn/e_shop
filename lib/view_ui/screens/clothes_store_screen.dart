
import 'package:eshop/model/services/navigation_service.dart';
import 'package:eshop/utils/locator.dart';
import 'package:eshop/utils/router.dart';
import 'package:eshop/view_model/providers/products_viewmodel.dart';
import 'package:eshop/view_ui/custom_widgets/product_card_widget.dart';
import 'package:eshop/view_ui/screens/product_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ClothesStoreScreen extends StatelessWidget {
  const ClothesStoreScreen({Key? key}) : super(key: key);
  static const String id = 'ClothesStoreScreen';
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
                    Text(
                      'My Clothes',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        color: Colors.blue
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.1,
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.025,
                ),
                Expanded(
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
                    itemCount: model.clothesCount,
                    itemBuilder: (_, index) {
                      var cloth = model.clothes[index];
                      return ProductCard(
                        icon: model.favouritesProductIds.contains(cloth.id) ? Icon(
                          // Icons.favorite_border_outlined,
                          Icons.favorite_outlined,
                          size: 19,
                          color: Colors.blue,
                        ) : Icon(Icons.favorite_border_outlined, size: 19, color: Colors.white,),
                          nameText: cloth.name.toString(),
                          priceText: cloth.price.toString(),
                          imageOnTap: (){
                            locator<NavigationService>().push(ProductScreen(product: cloth,));
                          },
                          cartOnTap: (){
                            model.addToCart(cloth);
                          },
                          onTap: (){
                            model.checkFavUp(cloth, index);
                          }, imageText: cloth.image.toString());
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


