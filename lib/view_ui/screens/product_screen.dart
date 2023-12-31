import 'package:eshop/utils/locator.dart';
import 'package:eshop/utils/router.dart';
import 'package:eshop/view_model/providers/products_viewmodel.dart';
import 'package:eshop/view_ui/custom_widgets/image_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key, this.product}) : super(key: key);
  static const String id = 'ProductScreen';
  final Product? product;
  @override
  Widget build(BuildContext context) {
    return Consumer<ProductsViewModell>(builder: (_, model, child) {
      return Scaffold(
        body: SafeArea(
          child: SizedBox(
            height: MediaQuery.sizeOf(context).height,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 17.0,),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0, left: 15.0),
                    child: Row(
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
                          'My Product',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            // color: Colors.blue
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width * 0.1,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.025,
                  ),
                  Expanded(
                      flex: 6,
                      child: SizedBox(
                        child: ImageWidget(
                            // imageText: 'assets/images/hats/hat3.jpg'),
                            imageText:  product!.image.toString(),),
                      )),
                  SizedBox(height: 10,),
                  Expanded(flex: 7, child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20),),
                    ),
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 14.0, bottom: 14.0, left: 18.0, right: 18.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'BEST SELLER',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                  color: Colors.blue
                                ),
                              ),
                              // Icon(Icons.favorite_outline, color: Colors.blue,size: 26,),
                              GestureDetector(
                                onTap: (){
                                  model.checkFavUp(product!,);
                                },
                                child: model.favouritesProductIds.contains(product!.id) ? Icon(
                                  // Icons.favorite_border_outlined,
                                  Icons.favorite_outlined,
                                  size: 26,
                                  color: Colors.blue,
                                ) : Icon(Icons.favorite_border_outlined, size: 26, color: Colors.blue,),
                              ),
                            ],
                          ),
                          Divider(),
                          Text(
                            // 'My Product Name',
                            product!.name.toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins',
                              fontSize: 16.9,
                              // color: Colors.blue
                            ),
                          ),
                          // Text(
                          //   '\$967.00',
                          //   style: TextStyle(
                          //     fontWeight: FontWeight.w500,
                          //     fontFamily: 'Poppins',
                          //     fontSize: 16.5,
                          //     // color: Colors.blue
                          //   ),
                          // ),
                          Text(
                            '${product!.name} is really the best ever and there is nothing you can do about it.\n${product!.name} made with th best raw materials ever!!!',
                            maxLines: 6,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              color: Colors.grey
                              // color: Colors.blue
                            ),
                          ),
                          Divider(),
                          Text(
                            'Size',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              // color: Colors.blue
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ProductSizeWidget(text: 'S',),
                              ProductSizeWidget(text: 'M',),
                              ProductSizeWidget(text: 'L',),
                              ProductSizeWidget(text: 'XL',),
                              ProductSizeWidget(text: 'XXL',),
                            ],
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Price',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Poppins',
                                      fontSize: 14,
                                      color: Colors.grey
                                    ),
                                  ),
                                  Text(
                                    // '\$967.00',
                                    '\$${product!.price}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Poppins',
                                      fontSize: 17,
                                      // color: Colors.blue
                                    ),
                                  ),
                                ],
                              ),
                              MaterialButton(
                                onPressed: () {
                                  model.addToCart(product!);
                                },
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25)),
                                color: Colors.blue,
                                minWidth: MediaQuery.sizeOf(context).width / 2.2,
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Text(
                                    model.cartsProductIds.contains(product!.id) ? 'Added To Cart' : 'Add To Cart',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Poppins',
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),),

                  // Expanded(
                  //   child: GridView.builder(
                  //     gridDelegate:
                  //     SliverGridDelegateWithFixedCrossAxisCount(
                  //       crossAxisCount: 2,
                  //       mainAxisSpacing: 15,
                  //       crossAxisSpacing: 15,
                  //       // childAspectRatio: 0.7 ,
                  //       mainAxisExtent:
                  //       MediaQuery.sizeOf(context).height *
                  //           0.275, //220
                  //     ),
                  //     physics: BouncingScrollPhysics(),
                  //     itemCount: model.watchesCount,
                  //     itemBuilder: (_, index) {
                  //       var watch = model.watches[index];
                  //       return Container();
                  //     },
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}


class ProductSizeWidget extends StatelessWidget {
  const ProductSizeWidget({Key? key,required this.text}) : super(key: key);
final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: CircleAvatar(radius: 20, backgroundColor: Colors.grey.shade200, child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontFamily: 'Poppins',
          fontSize: 13,
          color: Colors.grey,
        ),
      ),),
    );
  }
}
