import 'package:eshop/utils/locator.dart';
import 'package:eshop/utils/router.dart';
import 'package:eshop/view_model/providers/products_viewmodel.dart';
import 'package:eshop/view_ui/custom_widgets/cart_card_widget.dart';
import 'package:eshop/view_ui/screens/checkout_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);
  static const String id = 'CartScreen';
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
                        'My Cart',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          fontSize: 16,
                        ),
                      ),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.shopping_cart_outlined,
                          size: 23,
                          color: Colors.blue,
                        ),
                      ),
                      // SizedBox(
                      //   width: MediaQuery.sizeOf(context).width * 0.1,
                      // ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.025,
                  ),
                 model.cartItems.length == 0? Expanded(
                   child: Align(
                     alignment: Alignment.center,
                     child: Text(
                       'No items \nadded to \nthe cart yet 🛒',
                       style: TextStyle(
                         // color: Colors.blue,
                           fontFamily: 'Poppins',
                           fontSize: 13),
                     ),
                   ),
                 ) : Expanded(
                    flex: 5,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: model.cartItems.length,
                        itemBuilder: (_, index) {
                          var cart = model.cartItems[index];
                          return CartCardWidget(
                            ontap: (){
                              model.removeItemsFromCart(cart);
                            },
                            // imagetext: 'assets/images/clothes/cloth4.jpg',
                            imagetext: cart.image.toString(),
                            pricetext: cart.price.toString(),
                            titletext: cart.name,
                            addontap: (){
                              model.addToNumberOfProduct(cart);
                              print('add to number of product');
                            },
                            removeontap: (){
                              model.removeToNumberOfProduct(cart);
                              print('removed from number of product');
                            },
                            numberofproduct: cart.numberOfProduct.toString(),
                          );
                        }),
                  ),
                  // SizedBox(height: 4,),
                 model.cartItems.length == 0 ? SizedBox() : Expanded(
                      flex: 2,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Subtotal',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Poppins',
                                      fontSize: 15,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    '\$${model.CalculateSubtotalCartPrice.toStringAsFixed(2)}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Poppins',
                                      fontSize: 15,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Shopping',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Poppins',
                                      fontSize: 15,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    model.cartItems.length <= 4 ? '\$19.99' : '\$29.99',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Poppins',
                                      fontSize: 15,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              Divider(),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Total Cost',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Poppins',
                                      fontSize: 15,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    '\$${model.TotalPrice.toStringAsFixed(2)}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 3,),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12.0),
                                child: MaterialButton(
                                  onPressed: () {
                                    locator<AppRouter>().router.push('/${CheckoutScreen.id}');
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25)),
                                  color: Colors.blue,
                                  minWidth: MediaQuery.sizeOf(context).width,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Checkout (${model.cartItems.length}) items',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Poppins',
                                        fontSize: 14.5,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}



